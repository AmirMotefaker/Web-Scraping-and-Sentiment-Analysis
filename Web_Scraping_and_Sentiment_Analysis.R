{
  "nbformat": 4,
  "nbformat_minor": 0,
  "metadata": {
    "colab": {
      "provenance": [],
      "authorship_tag": "ABX9TyMd4PxxmRKlF0ZYUMJDqejA",
      "include_colab_link": true
    },
    "kernelspec": {
      "name": "ir",
      "display_name": "R"
    },
    "language_info": {
      "name": "R"
    },
    "gpuClass": "standard"
  },
  "cells": [
    {
      "cell_type": "markdown",
      "metadata": {
        "id": "view-in-github",
        "colab_type": "text"
      },
      "source": [
        "<a href=\"https://colab.research.google.com/github/AmirMotefaker/Web-Scraping-and-Sentiment-Analysis/blob/main/Web_Scraping_and_Sentiment_Analysis.R\" target=\"_parent\"><img src=\"https://colab.research.google.com/assets/colab-badge.svg\" alt=\"Open In Colab\"/></a>"
      ]
    },
    {
      "cell_type": "markdown",
      "source": [
        "# Install Packages"
      ],
      "metadata": {
        "id": "uGnrvmzPCGK2"
      }
    },
    {
      "cell_type": "code",
      "execution_count": 2,
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "pY-dK8_ZBUyP",
        "outputId": "fe0420ef-7a94-4331-9aa6-2273ddee5a9e"
      },
      "outputs": [
        {
          "output_type": "stream",
          "name": "stderr",
          "text": [
            "Installing package into ‘/usr/local/lib/R/site-library’\n",
            "(as ‘lib’ is unspecified)\n",
            "\n",
            "Installing package into ‘/usr/local/lib/R/site-library’\n",
            "(as ‘lib’ is unspecified)\n",
            "\n",
            "also installing the dependencies ‘Rcpp’, ‘bitops’, ‘binman’, ‘semver’, ‘caTools’, ‘wdman’\n",
            "\n",
            "\n",
            "Installing package into ‘/usr/local/lib/R/site-library’\n",
            "(as ‘lib’ is unspecified)\n",
            "\n",
            "Installing package into ‘/usr/local/lib/R/site-library’\n",
            "(as ‘lib’ is unspecified)\n",
            "\n"
          ]
        }
      ],
      "source": [
        "install.packages(\"tidyverse\")\n",
        "install.packages(\"RSelenium\")\n",
        "install.packages(\"rvest\")\n",
        "install.packages(\"sys\")"
      ]
    },
    {
      "cell_type": "markdown",
      "source": [
        "# Load Libraries"
      ],
      "metadata": {
        "id": "XJMmolJmCerx"
      }
    },
    {
      "cell_type": "code",
      "source": [
        "library(\"RSelenium\")\n",
        "library(\"rvest\")\n",
        "library(\"tidyverse\")\n",
        "library(\"sys\")"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "iWfzWYc2CnUf",
        "outputId": "ed9d3553-4ee0-4d3e-fc11-e7341eb196da"
      },
      "execution_count": 3,
      "outputs": [
        {
          "output_type": "stream",
          "name": "stderr",
          "text": [
            "Warning message in system(\"timedatectl\", intern = TRUE):\n",
            "“running command 'timedatectl' had status 1”\n",
            "── \u001b[1mAttaching packages\u001b[22m ─────────────────────────────────────── tidyverse 1.3.2 ──\n",
            "\u001b[32m✔\u001b[39m \u001b[34mggplot2\u001b[39m 3.4.0      \u001b[32m✔\u001b[39m \u001b[34mpurrr  \u001b[39m 0.3.5 \n",
            "\u001b[32m✔\u001b[39m \u001b[34mtibble \u001b[39m 3.1.8      \u001b[32m✔\u001b[39m \u001b[34mdplyr  \u001b[39m 1.0.10\n",
            "\u001b[32m✔\u001b[39m \u001b[34mtidyr  \u001b[39m 1.2.1      \u001b[32m✔\u001b[39m \u001b[34mstringr\u001b[39m 1.4.1 \n",
            "\u001b[32m✔\u001b[39m \u001b[34mreadr  \u001b[39m 2.1.3      \u001b[32m✔\u001b[39m \u001b[34mforcats\u001b[39m 0.5.2 \n",
            "── \u001b[1mConflicts\u001b[22m ────────────────────────────────────────── tidyverse_conflicts() ──\n",
            "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m         masks \u001b[34mstats\u001b[39m::filter()\n",
            "\u001b[31m✖\u001b[39m \u001b[34mreadr\u001b[39m::\u001b[32mguess_encoding()\u001b[39m masks \u001b[34mrvest\u001b[39m::guess_encoding()\n",
            "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m            masks \u001b[34mstats\u001b[39m::lag()\n"
          ]
        }
      ]
    }
  ]
}