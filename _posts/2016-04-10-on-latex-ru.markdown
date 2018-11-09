---
layout: post
title:  "Про LaTeX"
categories: ru latex
lang: ru
ref: latexverbatim
---
Мне доставляет удовольствие верстка, нравится LaTeX и в частности пакет beamer, но описанное ниже просто выводит из равновесия.

Если вы используете окружение verbatim в документе beamer, будьте готовы [гуглить](https://www.google.com/search?&q=latex+beamer+verbatim+problem). Проблема, с которой вы практически гарантированно столкнетесь, хорошо известна, и, [процитирую](http://tex.stackexchange.com/questions/256666/paragraph-ended-before-verbatim-was-complete-when-trying-to-use-verbatim-in),

> Документация beamer'а описывает эту проблему в нескольких местах. И вы точно не первый, у кого появляются ошибки из-за содержимого verbatim. Когда я вижу сигнальные слова "beamer + verbatim + ошибка", моя первая мысль - "не хватает опции fragile".

Я что-то упускаю или подобные странные зависимости действительно свидетельствуют об несовершенстве общей архитектуры? Не обладает ли LaTeX, самое мощное средство для верстки в наблюдаемой части Вселенной, [фундаментальным изъяном](http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0115069)?
