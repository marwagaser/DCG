   %start_sentences
   sentence(sentence(SIMPLE_SENTENCE)) -->  simple_s(SIMPLE_SENTENCE).
   sentence(sentence(SIMPLE_SENTENCE,CONJ,SENTENCE)) --> simple_s(SIMPLE_SENTENCE),conj(CONJ),sentence(SENTENCE).
   simple_s(simple_s(NP,VP)) -->  noun_phrase(NP),verb_phrase(VP).
   /* Simplest case if we have one np and one vp. The other cases should handle NP, RELATIVE CLAUSE, VP, AND PREPOSITION_CLAUSE IN DIFFERENT ORDERS, WITH ANDS BETWEEN NOUN AND VERB PHRASES*/
   a(a(ADJ1)) --> adjective(ADJ1).
   a(a(ADJ2,AP)) --> adjective(ADJ2), a(AP).
   adjective(adjective(ADJ3)) --> adj(ADJ3).
   %adverb_phrasessen
   adverb_phrase(adverb_phrase(ADVERB)) --> single_adverb(ADVERB).
   adverb_phrase(adverb_phrase(ADVERB1,ADVERB_PHRASE)) --> single_adverb(ADVERB1), adverb_phrase(ADVERB_PHRASE).
   single_adverb(single_adverb(SINGLE_ADVERB)) --> adv(SINGLE_ADVERB).
   %noun_phrases
   noun_phrase(noun_phrase(NOUN_PHRASE)) --> noun_phrase_prep(NOUN_PHRASE).
   noun_phrase(noun_phrase(NOUN_PHRASE,CONJ,NOUN_PHRASE_NP)) --> noun_phrase_prep(NOUN_PHRASE), conj(CONJ),noun_phrase(NOUN_PHRASE_NP).
   noun_phrase_prep(noun_phrase_prep(NOUN_PHRASE_WITHOUT_PREP)) -->  np(NOUN_PHRASE_WITHOUT_PREP).
   noun_phrase_prep(noun_phrase_prep(NOUN_PHRASE_PREP, PREPOSITIONAL_CLAUSE)) -->  np(NOUN_PHRASE_PREP), prep_clause(PREPOSITIONAL_CLAUSE).
   np(np(DET,N))  -->  det(DET),n(N).
   np(np(DET,AP,N))  -->  det(DET),a(AP),n(N).
   np(np(AP,N))  --> a(AP),n(N).
   np(np(N))  -->  n(N).
   %verb_phrases
   verb_phrase(verb_phrase(VERB_PHRASE)) --> verb_phrase_prep(VERB_PHRASE).
   verb_phrase(verb_phrase(VERB_PHRASE,CONJ,VERB_PHRASE_NP)) --> verb_phrase_prep(VERB_PHRASE), conj(CONJ),verb_phrase(VERB_PHRASE_NP).
   verb_phrase_prep(verb_phrase_prep(VERB_PHRASE)) -->  vp(VERB_PHRASE).
   verb_phrase_prep(verb_phrase_prep(VERB_PHRASE, PREPOSITIONAL_CLAUSE)) -->  vp(VERB_PHRASE), prep_clause(PREPOSITIONAL_CLAUSE).
   vp(vp(V,NP))  -->  v(V),noun_phrase(NP).
   vp(vp(V))  -->  v(V).
   vp(vp(ADV,V,NP))  --> adverb_phrase(ADV),v(V),noun_phrase(NP).
   vp(vp(ADV,V))  --> adverb_phrase(ADV),v(V).
   %preposition_phrases
   prep_clause(prep_clause(PREP_PHRASE)) --> prep_phrase(PREP_PHRASE).
   prep_clause(prep_clause(PREP_PHRASE,PREP_CLAUSE)) --> prep_phrase(PREP_PHRASE),prep_clause(PREP_CLAUSE).
   prep_phrase(prep_phrase(PREPOSITION,NP)) --> prep(PREPOSITION),noun_phrase(NP).
   %relative_clases
   relative_clause(relative_clause(RELATIVE_PRONOUN,PRONOUN,VP,PREP_CLAUSE)) --> rp(RELATIVE_PRONOUN), p(PRONOUN),verb_phrase(VP),prep_clause(PREP_CLAUSE).
   relative_clause(relative_clause(RELATIVE_PRONOUN,VP,PREP_CLAUSE)) --> rp(RELATIVE_PRONOUN),verb_phrase(VP),prep_clause(PREP_CLAUSE).
   relative_clause(relative_clause(RELATIVE_PRONOUN,PRONOUN,VP)) --> rp(RELATIVE_PRONOUN), p(PRONOUN),verb_phrase(VP).
   relative_clause(relative_clause(RELATIVE_PRONOUN,VP)) --> rp(RELATIVE_PRONOUN),verb_phrase(VP).
  %determinants
   det(det(the))  -->  [the].
   det(det(a))  -->  [a].
   %nouns
   n(n(boy))  -->  [boy].
   n(n(man))-->  [man].
   n(n(box))-->  [box].
   n(n(room))-->  [room].
   n(n(school))-->  [school].
   n(n(woman))-->  [woman].
   n(n(envelope))-->  [envelope].
   n(n(shed))-->  [shed].
   n(n(building))-->  [building].
   n(n(tree))-->  [tree].
   n(n(girl))-->  [girl].
   n(n(students))-->  [students].
   n(n(professors))-->  [professors].
   n(n(lecturers))-->  [lecturers].
   n(n(scientists))-->  [scientists].
   n(n(researchers))-->  [researchers].
   %pronouns
   p(p(they)) --> [they].
   %relative_pronouns
   rp(rp(who)) --> [who].
   rp(rp(whom)) --> [whom].
   %verbs
   v(v(worked))  -->  [worked].
   v(v(pushed))  -->  [pushed].
   v(v(stored))  -->  [stored].
   v(v(gave))  -->  [gave].
   v(v(liked))  -->  [liked].
   v(v(watched))  -->  [watched].
   v(v(admired))  -->  [admired].
   v(v(appreciated))  -->  [appreciated].
   v(v(climbed))  -->  [climbed].
   %adjectives
   adj(adj(large)) --> [large].
   adj(adj(old)) --> [old].
   adj(adj(young)) --> [young].
   adj(adj(big)) --> [big].
   adj(adj(empty)) --> [empty].
   adj(adj(white)) --> [white].
   adj(adj(poor)) --> [poor].
   adj(adj(some)) --> [some].
   adj(adj(every)) --> [every].
   adj(adj(brilliant)) --> [brilliant].
   adj(adj(many)) --> [many].
   adj(adj(talented)) --> [talented].
   adj(adj(bright)) --> [bright].
   %adverbs
   adv(adv(quickly)) --> [quickly].
   adv(adv(secretly)) --> [secretly].
   %prepositions
   prep(prep(in)) --> [in].
   prep(prep(for)) --> [for].
   prep(prep(after)) --> [after].
   prep(prep(behind)) --> [behind].
   %conjunctions
   conj(conj(and))  -->  [and].
   conj(conj(while))  -->  [while].
/*You only need to handle conjunctions between noun phrases, verb phrases, and entire sentences.*/
