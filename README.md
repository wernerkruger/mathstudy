# Math Study

A family mathematics programme with three separate tracks, one per learner.

| Track | Folder | Learner | Goal | Length |
|---|---|---|---|---|
| Adult | [adult-masters](adult-masters/) | Parent with a BSc in pure mathematics | Refresh undergraduate mathematics, then reach Masters level | About 3–4 years at 5–8 hours a week |
| Accelerated secondary | [highschool-accelerated](highschool-accelerated/) | 12-year-old, groep 8, going to gymnasium | Fast-track the whole VWO programme at the highest level (the successor to Wiskunde B, plus Wiskunde D), with the Dutch Mathematical Olympiad alongside | Groep 8 to VWO 6 |
| Primary foundations | [primary-foundations](primary-foundations/) | 10-year-old, groep 6 | Build confidence and secure skills through groep 8, ready for the brugklas | Groep 6 to groep 8 |

Each track has its own README, roadmap, resources and progress tracker. The tracks are independent; nothing in one assumes another has been done.

## Language

The adult track is in English. The two children's tracks are in English with the Dutch terms used at school and in exams given alongside, for example "derivative (*afgeleide*)", so the material lines up with their schoolbooks. Each children's track has a Dutch–English glossary.

## How the folders are organised

```
mathstudy/
├── adult-masters/            Track 1: refresher → Masters
├── highschool-accelerated/   Track 2: groep 8 → VWO 6, highest level
└── primary-foundations/      Track 3: groep 6 → groep 8, confidence first
```

## PDFs

Every set of notes, problems, solutions, practice sheets, answers and activities has a PDF next to its `.md` file, for printing or reading offline. After editing a `.md` file, rebuild its PDF with `tools/pdf/build-pdfs.sh path/to/file.md`, or run the script with no arguments to rebuild all of them. It needs pandoc, a TeX Live installation with XeLaTeX, and the DejaVu fonts.

## Notes

- The study notes, problems and solutions were written for this repo and have been reviewed, but mistakes are possible. If something looks wrong, check it against the textbook and fix it here.
- Dutch exam programmes are changing between 2026 and 2031. Each children's track explains what this means for that child. Check the dates once a year.
