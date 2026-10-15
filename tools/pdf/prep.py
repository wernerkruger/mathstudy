import re,sys
s=open(sys.argv[1]).read()
s=re.sub(r'([_^])(\\(?:mathbb|mathcal|mathfrak|mathrm|mathbf|mathsf|text|operatorname|tfrac|frac|dfrac|sqrt|vec|bar|hat|tilde|overline)\s*(?:\{[^{}]*\})+)', r'\1{\2}', s)
open(sys.argv[2],'w').write(s)
s=open(sys.argv[2]).read()
fr={'⅓':'1/3','⅔':'2/3','⅛':'1/8','⅙':'1/6'}
for k,v in fr.items():
    s=re.sub(r'(\d)'+k, r'\1 '+v, s); s=s.replace(k,v)
open(sys.argv[2],'w').write(s)
s=open(sys.argv[2]).read()
s=re.sub(r'\]\(((?:[^)\s]*/)?(?:notes|problems|solutions|practice|answers|activities|diagnostic-test|diagnostic-solutions|mock-paper|mock-paper-solutions|exam-technique))\.md(#[^)]*)?\)', lambda m:']('+m.group(1)+'.pdf)', s)
open(sys.argv[2],'w').write(s)
