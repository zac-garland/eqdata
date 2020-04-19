
# eqdata

`eqdata` provides financial data from [Financial Modeling
Prep](https://financialmodelingprep.com/developer/docs/ "FMP Dev Site")

# install

``` r
devtools::install_github("zac-garland/eqdata")
library(eqdata)
```

# tickers

``` r
ticks <- c("AAPL","IBM")
```

# financial statements

``` r
q_income_statement(ticks, freq = c("quarterly", "annual"))
```

    ## # A tibble: 87 x 33
    ##    symbol date       Revenue `Revenue Growth` `Cost of Revenu~ `Gross Profit`
    ##    <chr>  <date>       <dbl>            <dbl>            <dbl>          <dbl>
    ##  1 AAPL   2019-12-28 9.18e10                0      56602000000    35217000000
    ##  2 AAPL   2019-09-28 6.40e10                0      39727000000    24313000000
    ##  3 AAPL   2019-06-29 5.38e10                0      33582000000    20227000000
    ##  4 AAPL   2019-03-30 5.80e10                0      36194000000    21821000000
    ##  5 AAPL   2018-12-29 8.43e10                0      52279000000    32031000000
    ##  6 AAPL   2018-09-29 6.29e10                0      38816000000    24084000000
    ##  7 AAPL   2018-06-30 5.33e10                0      32844000000    20421000000
    ##  8 AAPL   2018-03-31 6.11e10                0      37715000000    23422000000
    ##  9 AAPL   2017-12-30 8.83e10                0      54381000000    33912000000
    ## 10 AAPL   2017-09-30 5.26e10                0      32648000000    19931000000
    ## # ... with 77 more rows, and 27 more variables: `R&D Expenses` <dbl>, `SG&A
    ## #   Expense` <dbl>, `Operating Expenses` <dbl>, `Operating Income` <dbl>,
    ## #   `Interest Expense` <dbl>, `Earnings before Tax` <dbl>, `Income Tax
    ## #   Expense` <dbl>, `Net Income - Non-Controlling int` <dbl>, `Net Income -
    ## #   Discontinued ops` <dbl>, `Net Income` <dbl>, `Preferred Dividends` <dbl>,
    ## #   `Net Income Com` <dbl>, EPS <dbl>, `EPS Diluted` <dbl>, `Weighted Average
    ## #   Shs Out` <dbl>, `Weighted Average Shs Out (Dil)` <dbl>, `Dividend per
    ## #   Share` <dbl>, `Gross Margin` <dbl>, `EBITDA Margin` <dbl>, `EBIT
    ## #   Margin` <dbl>, `Profit Margin` <dbl>, `Free Cash Flow margin` <dbl>,
    ## #   EBITDA <dbl>, EBIT <dbl>, `Consolidated Income` <dbl>, `Earnings Before Tax
    ## #   Margin` <dbl>, `Net Profit Margin` <dbl>

``` r
q_balance_sheet(ticks, freq = c("quarterly", "annual"))
```

    ## # A tibble: 87 x 31
    ##    symbol date       `Cash and cash ~ `Short-term inv~ `Cash and short~
    ##    <chr>  <date>                <dbl>            <dbl>            <dbl>
    ##  1 AAPL   2019-12-28      39771000000      67391000000     107162000000
    ##  2 AAPL   2019-09-28      48844000000      51713000000     100557000000
    ##  3 AAPL   2019-06-29      50530000000      44084000000      94614000000
    ##  4 AAPL   2019-03-30      37988000000      42104000000      80092000000
    ##  5 AAPL   2018-12-29      44771000000      41656000000      86427000000
    ##  6 AAPL   2018-09-29      25913000000      40388000000      66301000000
    ##  7 AAPL   2018-06-30      31971000000      38999000000      70970000000
    ##  8 AAPL   2018-03-31      45059000000      42881000000      87940000000
    ##  9 AAPL   2017-12-30      27491000000      49662000000      77153000000
    ## 10 AAPL   2017-09-30      20289000000      53892000000      74181000000
    ## # ... with 77 more rows, and 26 more variables: Receivables <dbl>,
    ## #   Inventories <dbl>, `Total current assets` <dbl>, `Property, Plant &
    ## #   Equipment Net` <dbl>, `Goodwill and Intangible Assets` <dbl>, `Long-term
    ## #   investments` <dbl>, `Tax assets` <dbl>, `Total non-current assets` <dbl>,
    ## #   `Total assets` <dbl>, Payables <dbl>, `Short-term debt` <dbl>, `Total
    ## #   current liabilities` <dbl>, `Long-term debt` <dbl>, `Total debt` <dbl>,
    ## #   `Deferred revenue` <dbl>, `Tax Liabilities` <dbl>, `Deposit
    ## #   Liabilities` <dbl>, `Total non-current liabilities` <dbl>, `Total
    ## #   liabilities` <dbl>, `Other comprehensive income` <dbl>, `Retained earnings
    ## #   (deficit)` <dbl>, `Total shareholders equity` <dbl>, Investments <dbl>,
    ## #   `Net Debt` <dbl>, `Other Assets` <dbl>, `Other Liabilities` <dbl>

``` r
q_cash_flow_statement(ticks, freq = c("quarterly", "annual"))
```

    ## # A tibble: 87 x 17
    ##    symbol date       `Depreciation &~ `Stock-based co~ `Operating Cash~
    ##    <chr>  <date>                <dbl>            <dbl>            <dbl>
    ##  1 AAPL   2019-12-28       2816000000       1710000000      30516000000
    ##  2 AAPL   2019-09-28       3179000000       1499000000      19910000000
    ##  3 AAPL   2019-06-29       2933000000       1496000000      11636000000
    ##  4 AAPL   2019-03-30       3040000000       1514000000      11155000000
    ##  5 AAPL   2018-12-29       3395000000       1559000000      26690000000
    ##  6 AAPL   2018-09-29       2754000000       1345000000      19523000000
    ##  7 AAPL   2018-06-30       2665000000       1351000000      14488000000
    ##  8 AAPL   2018-03-31       2739000000       1348000000      15130000000
    ##  9 AAPL   2017-12-30       2745000000       1296000000      28293000000
    ## 10 AAPL   2017-09-30       2484000000       1174000000      15656000000
    ## # ... with 77 more rows, and 12 more variables: `Capital Expenditure` <dbl>,
    ## #   `Acquisitions and disposals` <dbl>, `Investment purchases and sales` <dbl>,
    ## #   `Investing Cash flow` <dbl>, `Issuance (repayment) of debt` <dbl>,
    ## #   `Issuance (buybacks) of shares` <dbl>, `Dividend payments` <dbl>,
    ## #   `Financing Cash Flow` <dbl>, `Effect of forex changes on cash` <dbl>, `Net
    ## #   cash flow / Change in cash` <dbl>, `Free Cash Flow` <dbl>, `Net
    ## #   Cash/Marketcap` <dbl>

# company meta

``` r
q_company_profile(ticks)
```

    ## # A tibble: 2 x 17
    ##   symbol price beta  volAvg mktCap lastDiv range changes changesPercenta~
    ##   <chr>  <dbl> <chr> <chr>  <chr>  <chr>   <chr>   <dbl> <chr>           
    ## 1 AAPL    283. 1.22~ 51071~ 1.237~ 2.92    170.~   -3.89 (-1.36%)        
    ## 2 IBM     120. 1.34~ 71854~ 1.067~ 6.28    90.5~    4.39 (+3.79%)        
    ## # ... with 8 more variables: companyName <chr>, exchange <chr>, industry <chr>,
    ## #   website <chr>, description <chr>, ceo <chr>, sector <chr>, image <chr>

``` r
q_company_quote(ticks)
```

    ## # A tibble: 2 x 22
    ##   symbol name  price changesPercenta~ change dayLow dayHigh yearHigh yearLow
    ##   <chr>  <chr> <dbl>            <dbl>  <dbl>  <dbl>   <dbl>    <dbl>   <dbl>
    ## 1 AAPL   Appl~  283.            -1.36  -3.89   277.    287.     328.   170. 
    ## 2 IBM    Inte~  120.             3.79   4.39   118.    120.     159.    90.6
    ## # ... with 13 more variables: marketCap <dbl>, priceAvg50 <dbl>,
    ## #   priceAvg200 <dbl>, volume <int>, avgVolume <int>, exhange <chr>,
    ## #   open <dbl>, previousClose <dbl>, eps <dbl>, pe <dbl>,
    ## #   earningsAnnouncement <chr>, sharesOutstanding <dbl>, timestamp <int>

``` r
q_company_rating(ticks)
```

    ## # A tibble: 2 x 4
    ##   symbol score rating recommendation
    ##   <chr>  <int> <chr>  <chr>         
    ## 1 AAPL       5 S      Strong Buy    
    ## 2 IBM        5 S-     Strong Buy

# ratios & calcs

``` r
q_discount_cash_flow(ticks, freq = c("quarterly", "annual"))
```

    ## # A tibble: 87 x 4
    ##    symbol date       `Stock Price`   DCF
    ##    <chr>  <date>             <dbl> <dbl>
    ##  1 AAPL   2019-12-28          309.  318.
    ##  2 AAPL   2019-09-28          249.  260.
    ##  3 AAPL   2019-06-29          210.  221.
    ##  4 AAPL   2019-03-30          205.  213.
    ##  5 AAPL   2018-12-29          156.  166.
    ##  6 AAPL   2018-09-29          212.  217.
    ##  7 AAPL   2018-06-30          190.  196.
    ##  8 AAPL   2018-03-31          165.  174.
    ##  9 AAPL   2017-12-30          168.  173.
    ## 10 AAPL   2017-09-30          167.  171.
    ## # ... with 77 more rows

``` r
q_enterprise_value(ticks, freq = c("quarterly", "annual"))
```

    ## # A tibble: 87 x 8
    ##    symbol date       `Stock Price` `Number of Shar~ `Market Capital~
    ##    <chr>  <date>             <dbl>            <dbl>            <dbl>
    ##  1 AAPL   2019-12-28          267.       4415040000    1179919440000
    ##  2 AAPL   2019-09-28          209.       4617834000     965173484340
    ##  3 AAPL   2019-06-29          178.       4660175000     830909202500
    ##  4 AAPL   2019-03-30          173.       4704945000     814661226750
    ##  5 AAPL   2018-12-29          180.       4735820000     850316481000
    ##  6 AAPL   2018-09-29          225.       4955377000    1115108486310
    ##  7 AAPL   2018-06-30          187.       5006640000     935590816800
    ##  8 AAPL   2018-03-31          175        5068877000     887053475000
    ##  9 AAPL   2017-12-30          172.       5112877000     878647912450
    ## 10 AAPL   2017-09-30          164        5217242000     855627688000
    ## # ... with 77 more rows, and 3 more variables: `- Cash & Cash
    ## #   Equivalents` <dbl>, `+ Total Debt` <dbl>, `Enterprise Value` <dbl>

``` r
q_financial_ratios(ticks)
```

    ## # A tibble: 1,298 x 5
    ##    symbol category                  date       indicator            value
    ##    <chr>  <chr>                     <date>     <chr>                <dbl>
    ##  1 AAPL   investmentValuationRatios 2019-09-28 priceBookValueRatio 10.7  
    ##  2 AAPL   investmentValuationRatios 2018-09-29 priceBookValueRatio 10.4  
    ##  3 AAPL   investmentValuationRatios 2017-09-30 priceBookValueRatio  6.38 
    ##  4 AAPL   investmentValuationRatios 2016-09-24 priceBookValueRatio  4.59 
    ##  5 AAPL   investmentValuationRatios 2015-09-26 priceBookValueRatio  5.44 
    ##  6 AAPL   investmentValuationRatios 2014-09-27 priceBookValueRatio  5.58 
    ##  7 AAPL   investmentValuationRatios 2013-09-28 priceBookValueRatio  0.526
    ##  8 AAPL   investmentValuationRatios 2012-09-29 priceBookValueRatio  0.750
    ##  9 AAPL   investmentValuationRatios 2011-09-24 priceBookValueRatio  0.644
    ## 10 AAPL   investmentValuationRatios 2010-09-25 priceBookValueRatio  0.653
    ## # ... with 1,288 more rows

``` r
q_growth_ratios(ticks, freq = c("quarterly", "annual"))
```

    ## # A tibble: 87 x 20
    ##    symbol date       `Gross Profit G~ `EBIT Growth` `Operating Inco~
    ##    <chr>  <date>                <dbl>         <dbl>            <dbl>
    ##  1 AAPL   2019-12-28           0.448          0.636            0.636
    ##  2 AAPL   2019-09-28           0.202          0.354            0.354
    ##  3 AAPL   2019-06-29          -0.0730        -0.139           -0.139
    ##  4 AAPL   2019-03-30          -0.319         -0.425           -0.425
    ##  5 AAPL   2018-12-29           0.330          0.448            0.448
    ##  6 AAPL   2018-09-29           0.179          0.278            0.278
    ##  7 AAPL   2018-06-30          -0.128         -0.206           -0.206
    ##  8 AAPL   2018-03-31          -0.309         -0.395           -0.395
    ##  9 AAPL   2017-12-30           0.701          1.00             1.00 
    ## 10 AAPL   2017-09-30           0.140          0.218            0.218
    ## # ... with 77 more rows, and 15 more variables: `Net Income Growth` <dbl>, `EPS
    ## #   Growth` <dbl>, `EPS Diluted Growth` <dbl>, `Weighted Average Shares
    ## #   Growth` <dbl>, `Weighted Average Shares Diluted Growth` <dbl>, `Dividends
    ## #   per Share Growth` <dbl>, `Operating Cash Flow growth` <dbl>, `Free Cash
    ## #   Flow growth` <dbl>, `Receivables growth` <dbl>, `Inventory Growth` <dbl>,
    ## #   `Asset Growth` <dbl>, `Book Value per Share Growth` <dbl>, `Debt
    ## #   Growth` <dbl>, `R&D Expense Growth` <dbl>, `SG&A Expenses Growth` <dbl>

``` r
q_key_ratios(ticks, freq = c("quarterly", "annual"))
```

    ## # A tibble: 87 x 50
    ##    symbol date       `Revenue per Sh~ `Net Income per~ `Operating Cash~
    ##    <chr>  <date>                <dbl>            <dbl>            <dbl>
    ##  1 AAPL   2019-12-28             20.8             5.04             6.91
    ##  2 AAPL   2019-09-28             13.9             2.96             4.31
    ##  3 AAPL   2019-06-29             11.5             2.16             2.50
    ##  4 AAPL   2019-03-30             12.3             2.46             2.37
    ##  5 AAPL   2018-12-29             17.8             4.22             5.64
    ##  6 AAPL   2018-09-29             12.7             2.85             3.94
    ##  7 AAPL   2018-06-30             10.6             2.30             2.89
    ##  8 AAPL   2018-03-31             12.1             2.73             2.98
    ##  9 AAPL   2017-12-30             17.3             3.92             5.53
    ## 10 AAPL   2017-09-30             10.1             2.05             3.00
    ## # ... with 77 more rows, and 45 more variables: `Free Cash Flow per
    ## #   Share` <dbl>, `Cash per Share` <dbl>, `Book Value per Share` <dbl>,
    ## #   `Tangible Book Value per Share` <dbl>, `Shareholders Equity per
    ## #   Share` <dbl>, `Interest Debt per Share` <dbl>, `Market Cap` <dbl>,
    ## #   `Enterprise Value` <dbl>, `PE ratio` <dbl>, `Price to Sales Ratio` <dbl>,
    ## #   `POCF ratio` <dbl>, `PFCF ratio` <dbl>, `PB ratio` <dbl>, `PTB
    ## #   ratio` <dbl>, `EV to Sales` <dbl>, `Enterprise Value over EBITDA` <dbl>,
    ## #   `EV to Operating cash flow` <dbl>, `EV to Free cash flow` <dbl>, `Earnings
    ## #   Yield` <dbl>, `Free Cash Flow Yield` <dbl>, `Debt to Equity` <dbl>, `Debt
    ## #   to Assets` <dbl>, `Net Debt to EBITDA` <dbl>, `Current ratio` <dbl>,
    ## #   `Interest Coverage` <dbl>, `Income Quality` <dbl>, `Dividend Yield` <dbl>,
    ## #   `Payout Ratio` <dbl>, `SG&A to Revenue` <dbl>, `R&D to Revenue` <dbl>,
    ## #   `Intangibles to Total Assets` <dbl>, `Capex to Operating Cash Flow` <dbl>,
    ## #   `Capex to Revenue` <dbl>, `Capex to Depreciation` <dbl>, `Stock-based
    ## #   compensation to Revenue` <dbl>, `Graham Number` <dbl>, `Graham
    ## #   Net-Net` <dbl>, `Working Capital` <dbl>, `Tangible Asset Value` <dbl>, `Net
    ## #   Current Asset Value` <dbl>, `Invested Capital` <dbl>, `Average
    ## #   Receivables` <dbl>, `Average Payables` <dbl>, `Average Inventory` <dbl>,
    ## #   `Capex per Share` <dbl>

# general

``` r
q_all_stock_price()
```

    ## # A tibble: 10,775 x 2
    ##    symbol  price
    ##    <chr>   <dbl>
    ##  1 PALL   207.  
    ##  2 CTVA#   27.1 
    ##  3 UMH-D   19.0 
    ##  4 WNRL    23.8 
    ##  5 GHM     11.7 
    ##  6 ASLN     1.56
    ##  7 BIOX     4.57
    ##  8 BHAC    10.8 
    ##  9 HEES    13.1 
    ## 10 USAS     1.98
    ## # ... with 10,765 more rows

``` r
q_stock_list()
```

    ## # A tibble: 14,032 x 4
    ##    symbol name                                      price exchange              
    ##    <chr>  <chr>                                     <dbl> <chr>                 
    ##  1 SPY    SPDR S&P 500                             287.   NYSE Arca             
    ##  2 CMCSA  Comcast Corporation Class A Common Stock  38.1  Nasdaq Global Select  
    ##  3 KMI    Kinder Morgan Inc.                        15.0  New York Stock Exchan~
    ##  4 INTC   Intel Corporation                         60.4  Nasdaq Global Select  
    ##  5 MU     Micron Technology Inc.                    45.7  Nasdaq Global Select  
    ##  6 GDX    VanEck Vectors Gold Miners                29.9  NYSE Arca             
    ##  7 GE     General Electric Company                   6.84 New York Stock Exchan~
    ##  8 BAC    Bank of America Corporation               23.3  New York Stock Exchan~
    ##  9 EEM    iShares MSCI Emerging Index Fund          36.3  NYSE Arca             
    ## 10 XLF    SPDR Select Sector Fund - Financial       22.4  NYSE Arca             
    ## # ... with 14,022 more rows

``` r
q_ticker_search("AA", limit = 10)
```

    ## # A tibble: 10 x 2
    ##    symbol value                                  
    ##    <chr>  <chr>                                  
    ##  1 FMS    Fresenius Medical Care AG & Co. KGaA   
    ##  2 MAA    Mid-America Apartment Communities, Inc.
    ##  3 IAA    IAA, Inc.                              
    ##  4 FICO   Fair Isaac Corporation                 
    ##  5 UAA    Under Armour, Inc.                     
    ##  6 AADBX  American Beacon Balanced Fund R5 Class 
    ##  7 AAON   AAON, Inc.                             
    ##  8 AAPL   Apple Inc.                             
    ##  9 AAXN   Axon Enterprise, Inc.                  
    ## 10 AAWW   Atlas Air Worldwide Holdings, Inc.
