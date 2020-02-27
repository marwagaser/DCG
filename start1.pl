   %start_sentences 
   sentence(sentence(SIMPLE_SENTENCE)) -->  simple_s(SIMPLE_SENTENCE).
   sentence(sentence(SIMPLE_SENTENCE,CONJ,SENTENCE)) --> simple_s(SIMPLE_SENTENCE),conj(CONJ),sentence(SENTENCE).
   simple_s(simple_s(NP,VP)) -->  np(NP),vp(VP).
   /* Simplest case if we have one np and one vp. The other cases should handle NP, RELATIVE CLAUSE, VP, AND PREPOSITION_CLAUSE IN DIFFERENT ORDERS, WITH ANDS BETWEEN NOUN AND VERB PHRASES*/
   %adjectives_phrases
   a(a(ADJ,AP)) --> adj(ADJ), a(AP).
   a(a(ADJ)) --> adj(ADJ).  
   %adverb_phrases
   adverb_phrase(adverb_phrase(ADVERB)) --> single_adverb(ADVERB).
   adverb_phrase(adverb_phrase(ADVERB,ADVERB_PHRASE)) --> single_adverb(ADVERB), adverb(ADVERB_PHRASE).
   single_adverb(single_adverb(SINGLE_ADVERB)) -->adv(SINGLE_ADVERB).
   %noun_phrases
   np(np(DET,N))  -->  det(DET),n(N).
   np(np(DET,AP,N))  -->  det(DET),a(AP),n(N).
   np(np(AP,N))  --> a(AP),n(N).
   np(np(N))  -->  n(N).
   %verb_phrases
   vp(vp(V,NP))  -->  v(V),np(NP).
   vp(vp(V))  -->  v(V).
   vp(vp(ADV,V,NP))  --> adv(ADV),v(V),np(NP).
   vp(vp(ADV,V))  --> adv(ADV),v(V).
   %preposition_phrases
   prep_clause(prep_clause(PREP_PHRASE)) --> prep_phrase(PREP_PHRASE).
   prep_clause(prep_clause(PREP_PHRASE,PREP_CLAUSE)) --> prep_phrase(PREP_PHRASE),prep_clause(PREP_CLAUSE).
   prep_phrase(prep_phrase(PREPOSITION,NP)) --> prep(PREPOSITION),np(NP).
   %relative_clases
   relative_clause(relative_clause(RELATIVE_PRONOUN,VP,PREP_CLAUSE)) --> rp(RELATIVE_PRONOUN),vp(VP),prep_clause(PREP_CLAUSE).
   relative_clause(relative_clause(RELATIVE_PRONOUN,PRONOUN,VP,PREP_CLAUSE)) --> rp(RELATIVE_PRONOUN), p(PRONOUN),vp(VP),prep_clause(PREP_CLAUSE).
   relative_clause(relative_clause(RELATIVE_PRONOUN,PRONOUN,VP)) --> rp(RELATIVE_PRONOUN), p(PRONOUN),vp(VP).
   relative_clause(relative_clause(RELATIVE_PRONOUN,VP)) --> rp(RELATIVE_PRONOUN),vp(VP).
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