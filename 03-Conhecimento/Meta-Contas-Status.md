---
tipo: relatorio
fonte: Meta Ads via Pipeboard (somente leitura)
data: 2026-10-22
---
# Status das contas de anúncio — Meta Ads

Levantado em 22/10/2026 pelo conector Pipeboard, **sem alterar nada**.

## Resumo

| | |
|---|---|
| Contas no total | 20 |
| **ATIVAS** | **19** |
| Não ativas | 1 (KiniBrasil — CLOSED) |
| Conexões (logins do Facebook) | 1 — Ricardo Alexandre Santos Nascimento, token **ativo** |
| Gasto acumulado (vida toda) | ~R$ 56.191 |

> **Nenhuma conta está bloqueada por política.** Todas as 20 têm `disable_reason = 0`,
> ou seja, a Meta não registrou motivo de desativação em nenhuma delas.

## Contas por gasto acumulado

| Conta | ID | Status | Gasto (vida toda) | Saldo |
|---|---|---|---:|---:|
| Diametral - Orlamare | act_654423647202890 | ATIVA | R$ 14.927,58 | R$ 4,24 |
| BM-Dra.Thaynná Rhayara | act_922560608877968 | ATIVA | R$ 10.773,59 | R$ 0 |
| BM-Fernanda Nanda | act_2508977786145455 | ATIVA | R$ 6.088,17 | R$ 0 |
| Madeireira Carajás | act_813537901015193 | ATIVA | R$ 4.004,91 | R$ 12,33 |
| Pau D´Arco Madeiras | act_765083436442663 | ATIVA | R$ 3.993,25 | R$ 0,01 |
| KiniBrasil ADM | act_3153715804744144 | ATIVA | R$ 3.664,24 | R$ 0,01 |
| ADELAIDE VIANA FINANÇAS | act_1718156955706363 | ATIVA | R$ 3.349,25 | R$ 52,36 |
| 01 - Natercia s Lima | act_1052799595931759 | ATIVA | R$ 1.756,76 | R$ 0 |
| Capitão Eures Maradona | act_2122887601935113 | ATIVA | R$ 1.493,43 | R$ 0 |
| BM- MARIA SARTO | act_3884932501637940 | ATIVA | R$ 1.452,59 | R$ 54,36 |
| PETS JP [AC1] | act_318283880064184 | ATIVA | R$ 1.314,57 | R$ 0 |
| Conta Ricardo Alexandre Gestor | act_478461475069137 | ATIVA | R$ 1.008,76 | R$ 1,46 |
| BM- ANTONIO JUNIOR | act_1124474800018029 | ATIVA | R$ 930,39 | R$ 21,74 |
| TAKE HOME | act_1284238926279973 | ATIVA | R$ 864,31 | R$ 4,61 |
| Soul Smile Odonto | act_979465765113672 | ATIVA | R$ 351,33 | R$ 4,22 |
| LM STAY DECOR | act_2204115130468584 | ATIVA | R$ 123,13 | R$ 21,08 |
| BM-JOIA RARA | act_2529184487261768 | ATIVA | R$ 94,73 | R$ 0 |
| I Love Estética | act_165512936291044 | ATIVA | R$ 0 | R$ 0 |
| Ricardo Alexandre S. Nascimento | act_336432687108350 | ATIVA | R$ 0 | R$ 0 |
| **KiniBrasil** | act_440614436998189 | **CLOSED (101)** | R$ 0 | R$ 0 |

## A única conta não ativa: KiniBrasil

- **Status 101 = CLOSED** (encerrada), não "bloqueada por política".
- `disable_reason = 0`: a Meta **não** registrou infração. Se fosse banimento por
  política, viria `ADS_INTEGRITY_POLICY` ou similar.
- Gasto zero e idade ~2041 dias: conta antiga que nunca rodou.
- **Causa provável**: encerramento administrativo — por inatividade prolongada ou
  fechamento manual pelo próprio portfólio. Existe a `KiniBrasil ADM`
  (act_3153715804744144), ativa e com R$ 3.664 gastos, que parece ser a substituta.

### Como recorrer, se quiser reaver
1. Business Manager → **Configurações do negócio → Contas → Contas de anúncios** → selecionar KiniBrasil.
2. Se aparecer "Reativar", é encerramento administrativo: reativa na hora.
3. Sem essa opção: **Central de Qualidade da Conta** (`business.facebook.com/accountquality`) —
   só lista contas com restrição; se KiniBrasil não aparecer lá, confirma que não é punição.
4. Sem solução nos dois: abrir chamado no **Suporte do Meta Business**, anexando o ID
   `act_440614436998189` e pedindo o motivo do encerramento.
5. **Na prática**: como a conta nunca gastou e já existe a ADM ativa, recuperar
   provavelmente não compensa o esforço.

## Observações sobre os dados
- `amount_spent` da API é o **gasto acumulado da vida da conta**, não o gasto recente.
  Para gasto dos últimos 30 dias é preciso consultar insights por período (raio-x, ainda pendente).
- Saldos baixos (centavos) em várias contas são resíduo de cobrança, não crédito disponível.
- Conexão única no Pipeboard, token ativo — nenhuma conta corre risco de cair por token expirado.
