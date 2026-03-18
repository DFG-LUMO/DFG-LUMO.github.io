---
title: "About"
description: "About the LUMO project"
---

## Project Summary

The goal of the project **LUMO** (**L**ifelong M**u**lti**mo**dal Language Learning by Explaining and Exploiting Compositional Knowledge) is to explore the important and challenging research question of **how to make multimodal language models robust against task changes by explaining and exploiting compositional knowledge**.

Existing multimodal models have problems in a lifelong language learning setting, where they are confronted with changing tasks while having to retain previously learned knowledge — i.e., mitigating *catastrophic forgetting*. This has been considered a challenging obstacle to their application to real-world scenarios.

In devising **Lifelong Learning Multimodal Models (LLMMs)**, we pursue four main objectives realized through corresponding work packages.

<figure class="about-figure">
  <img src="/images/figures/overview.png" alt="LUMO project overview">
  <figcaption>Overview of the LUMO project: objectives and their interconnections.</figcaption>
</figure>

---

## Objectives

### Datasets & Environments for Lifelong Multimodal Language Learning

Develop datasets and environments for two representative multimodal language learning tasks. Our focus is on concepts (e.g., colors, shapes), relations (e.g., spatial or functional relations), and actions that can be combined in novel ways across changing tasks.

<figure class="about-figure">
  <img src="/images/figures/vli.png" alt="Vision and language integration">
  <figcaption>Vision and language integration: compositional understanding across modalities.</figcaption>
</figure>

### Concept-Based Explanations of Lifelong Multimodal Language Learning

Understand **why** certain approaches lead to more robust LLMMs by scrutinizing how concepts and relations emerge inside an LLMM using **concept-based XAI (C-XAI)** methods. We also aim to understand the **training dynamics** of the formation of concepts and relations in an LLMM to elucidate compositional generalization and catastrophic forgetting.

<figure class="about-figure">
  <img src="/images/figures/c-xai.png" alt="Concept-based XAI methods">
  <figcaption>Concept-based explainability methods for analyzing internal representations.</figcaption>
</figure>

### Neuro-Symbolic Integration Using Vector Space Semantics

Develop a **tightly integrated neuro-symbolic approach** to improve the model's lifelong learning performance. Key ideas:

- Features of a concept form a **region in the embedding space**, enabling logical reasoning through spatial reasoning with feature regions
- Apply **symbolic constraints** using vector space semantics to those regions to regularize an LLMM via a *generalized semantic loss function*
- Address the **superposition problem** (where different concepts share the same dimensions) using sparse autoencoders and concept subspaces
- Investigate synergies between the neuro-symbolic approach and existing methods (e.g., data augmentation, experience replay, elastic weight consolidation)

<figure class="about-figure">
  <img src="/images/figures/subspace.png" alt="Concept subspaces">
  <figcaption>Concept subspaces in the embedding space for neuro-symbolic integration.</figcaption>
</figure>

### Sim2Real Transfer

Transfer insights from simulation to **real-world robotic manipulation** scenarios:

- Analyze discrepancies between concept representations learned in simulation vs. the real world
- Use concept-based techniques to close the sim2real gap by aligning concept regions across domains

<figure class="about-figure">
  <img src="/images/figures/sim2real.png" alt="Sim2Real transfer">
  <figcaption>Sim2Real transfer: bridging simulation and real-world robotic manipulation.</figcaption>
</figure>

---

## Project Details

<dl class="project-details">
  <div>
    <dt>Full Title</dt>
    <dd>Lifelong Multimodal Language Learning by Explaining and Exploiting Compositional Knowledge</dd>
  </div>
  <div>
    <dt>Acronym</dt>
    <dd>LUMO</dd>
  </div>
  <div>
    <dt>Funding</dt>
    <dd>Deutsche Forschungsgemeinschaft (DFG) – Research Grants</dd>
  </div>
  <div>
    <dt>Project Number</dt>
    <dd><a href="https://gepris.dfg.de/gepris/projekt/551629603?language=en">551629603</a></dd>
  </div>
  <div>
    <dt>Duration</dt>
    <dd>36 months (since 2025)</dd>
  </div>
  <div>
    <dt>Institution</dt>
    <dd>Department of Informatics, University of Hamburg</dd>
  </div>
  <div>
    <dt>Applicants</dt>
    <dd>Dr. Jae Hee Lee and Prof. Dr. Stefan Wermter</dd>
  </div>
  <div>
    <dt>Subject Area</dt>
    <dd>Image and Language Processing, Computer Graphics and Visualisation, Human Computer Interaction, Ubiquitous and Wearable Computing</dd>
  </div>
</dl>
