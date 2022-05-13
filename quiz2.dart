import 'package:flutter/material.dart';
import '/result.dart';

var quiz = SecondQuiz(); //place database in a variable
var questionNumber = 1; //initialize start of number question

class SecondQuiz {
  var questions = [
    "It is putting your money  into something with expectation of gain that upon thourough analysis has a high degree of security for the principal amount, as well as security in return, within an expected period of time.",
    "These investments are undertaken with an expectation of increasing the current economy's capital stock that consists of goods and services",
    "This refers to the loss of principal amount of an investment",
    "It is defined as the actual income from a project as well as appreciation in the value of capital",
    "This is the individual that puts money into an entity such as business for a financial return",
    "The main goal of any investor is to maximize risk and minimize return",
    "It is the act of putting money into a business or organization to earn a profit",
    "It is the organization the regulates the investment risk in publicly traded companies in the Philippines",
    "This investor is someone who invests in securities or assets on their own, usually in smaller quantities.",
    "It is a company or an organization that invests money to buy securities or assets such as real estate",
    "It is the basic financial concept that holds that money in the present is worth more than the same sum of the money to be received in the future",
    "It is a market where people trade financial securities, commodities, and value at low transaction costs and at prices that reflect supply and demand",
    "Securities include stocks and bonds while Commodities include precious metals and agricultural products",
    "It is a market for short term funds which deals in monetary assets whose period of maturity is up to one year",
    "In the money market, the expected return is less due to short duration and lower risk",
    "It is a money-market security issued (sold) by large banks and corporations to get money to meet short-term debt obligations",
    "These are transactions or short-term loans in which two parties agree to sell and repurchase the same security.",
    "It refers to the whole network of organizations, institutions and instruments that deal in medium and long-term funds",
    "In the capital market, the expected returns are high as there in the scope of earning capital gains and long term prosperity is also shared by the company in the forms of dividends and bonus issues",
    "New shares are issued and sold to the investing public for the first time",
    " In this market, the original shareholders sell their shares to other investors",
    " It is an organized activity involving the buying and selling of securities done within the stock exchange",
    "Stock exhange is a capital raising mechanism",
    "They are the ones who serve as a middleman between the investors and the buyers/sellers",
    "Stocks of corporations not listed and therefore not traded in the stock exchange but registered and licensed by the Securities and Exchange Commission for sale to the public are only available in the so-called ____________",
    "Over the Counter inquiries are usually carried out by indirect inquiries",
    "It is the division of a bank or a financial institution that serves government, corporations, and institutions bby providing underwriting and mergers and acquisitions advisory services",
    "This function of Investment Banks serves the primary market or 'new capital'",
    "An offering is the issue of a sale of a security by a company",
    " A secondary offering is also called 'Initial Public Offering'",
    " Stocks are shares of ownership in a company",
    "As you acquire more stocks, your ownership stake in the company becomes greater",
    "It is a security usually purchased for participation in the profits and control of ownership and management of the company",
    "This date is when the dividend is formally declared by the board of directors",
    " Two days prior to date of record. ",
    " Investors shown to own stocks to this date receive the dividend",
    " The date when dividend checks are mailed",
    " It is a security whereby the holder has a higher claim on the assets and earnings of the company.",
    "Common stocks usually have a specified limited rate of return or dividend",
    "Preferred stockholders have voting rights",
    "These are shares of well-established and financially sound companies that have demonstrated their ability to pay dividends in both good and bad times.They also exhibit more modest but dependable returns and are relatively of lower risk.",
    "These are shares of those companies with good dividend payment history due to steady profits.These stocks also have a lower level of volatility since they are stable.",
    "Also called “glamour stocks”,are shares of corporations whose earnings are expected to grow at an above-average rate relative to the market.",
    "These are shares that provide regular dividends and stable earnings,regardless of the overall condition of the stock market.",
    "These stocks are sensitive to business conditions strongly tied with the economy’s performance. ",
    "These are stocks that rise quickly when economic growth is strong and falls rapidly when growth is slowing down.",
    "It refers to the returns in current peso in an investment",
    "This return reflects any gain or loss in purchasing power",
    " It is the return that an investor expects when initiating an investment.",
    " It is the return the investor actually receives,in contrast to the return that he or she expects.",
    " It is generally defined as the probability that an asset’s actual return will differ from its expected return",
    "It is the return uncertainty caused by economy wide developments.",
    " It is the return uncertainty caused by firm specific developments.",
    " This method focuses on describing and measuring return uncertainties associated with investments.",
    " It is a type of asset that allows you to earn interest for the money that you allow to be borrowed to an institution,generally businesses and the government.",
    "Bonds are usually described to be riskier than other aggressive assets such as corporate stocks",
    "A bond is a debt which can also be considered as an obligation where the company provides the details of the loans and payments",
    "Bonds are generally viewed as safer investments than stocks.",
    " It is trust that pools the savings of a number of investors who share a common financial goal thus the money collected is then invested in capital market instruments such as shares, debentures and other securities.",
    "The income earned through mutual investments and the capital appreciation realized are shared by its unit holders equally",
    "This type of mutual fund is considered to have the highest risk but with the potential for the biggest returns in the long term",
    "One of the advantages of mutual funds is their reports are more transparent and has a higher level of accountability",
    "This type of mutual fund invests in a mix officed-income investments like treasury notes,government securities,and commercial papers",
    "This type of mutual fund invests primarily in short-term debt securities like time deposits and corporate bonds. It is considered to be the safest Mutual Fund type but also generates the least amount of return for your money.",
    "Having better potential gains means you have a better chance of protecting your capital against inflation.",
    "Compared to a savings account in a bank,your money will have better growth potential when invested in Mutual Fund.",
    "Like deposits made with banks,an investment in the Mutual Fund is guaranteed by the Philippine Deposit Insurance Corporation(PDIC).",
    "The performance of the Fund is also dependent on the Fund Manager's skills.",
    "The influence that the investors can exert over the control and management of the Mutual Fund increases proportionately",
    "The Mutual Fund's investments and operations are subject to various regulations affecting among others,accounting of assets and taxation.",
    "This is where currencies are bought and sold according to the current price.",
    "This type of investing involves the purchase, ownership, management, rental and/or sale of the investment for profit.",
    "It is the most popular of all the precious metals when it comes to investment",
    "These funds derived this name due to their core idea to generate consistent return and preserve capital, instead of focusing on the magnitude of returns.",
    "Hedge funds are best known for investments in risky assets and derivatives.",
    "Compared to other precious metals used for investment, Platinum has the most effective safe haven and hedging properties across a number of countries.",
    " It is a method of measuring a security's intrinsic value by examining related economic and financial factors.",
    "This analysis involves assessing or examining topics or issues from an economist's perspective.",
    "This analysis is a market assessment tool used by businesses and analysts to understand the competitive dynamics of an industry.",
    "A SWOT Analysis can be a great way of summarizing various industry forces and determining their implications for the business in question.",
    " It is a process carried out by investors to evaluate securities,collecting informations related to the company's profile,products and services as well as profitability.",
    " This analysis can be referred as a process of understanding the risk and profitability of a company by analyzing reported financial info, especially annual and quarterly reports.",
    "To become a fundamental analyst, one does not require any special skill. Common sense, basic mathematics, and a bit of business sense is all that is required",
    "Fundamental Analysis is used to make short term investments",
    " It is a tool,or method,used to predict the probable future price movement of a security such as a stock or currency pair based on market data.",
    " Technical traders believe that current or past price action in the market is the most reliable indicator of future price action.",
    "The highest point of a candle stick shows the lowest price a security traded at during that time period.",
    " It is a price point underneath a market that shows heaviness in buying sufficient enough to prevent prices from falling down",
    "It is a price point above a market that shows heaviness in selling sufficient enough to prevent prices from rising up.",
    " It is a condition where prices push themselves above a pattern's Resistance commanding a “Buy”.",
    "It is a condition where prices push themselves below a pattern's Support commanding a “Sell”.",
    "If Technical Analysis is done well, it can improve your profitability as a trader",
    " Technical Indicators are 100% accurate all the time",
    "Over the long term,the stock prices of a fundamentally strong company tend to appreciate, thereby creating wealth for its investors.",
    "Microeconomic analysis includes factors such as interest rates,inflation,and growth in unemployment.",
    "The first assumption of Fundamental Analysis is about the price of the stock market which fully reflects a stock's real value",
    "It is the aspect/factor that describes the characteristics of a business which give advantages over its competitors",
    "These are elements of a company that allow it to formulate and implement strategies to increase profitability",
    "The tools required for Fundamental Aanalysis are difficult to find, most of these tools are unavailable and needs payment before using"
  ];

  var choices = [
    [
      "A. Personal Investment",
      "B. Economic Investment",
      "C. Financial Invesment",
      "D. Mutual Funds"
    ],
    [
      "A. Personal Investment",
      "B. Economic Investment",
      "C. Financial Invesment",
      "D. Mutual Funds"
    ],
    ["A. Risk", "B. Net loss", "C. Bankruptcy", "D. Threat"],
    ["A. Profit", "B. Gain", "C. Net Income", "D. Return"],
    [
      "A. Financial Manager",
      "B. Investment Banker",
      "C. Investor",
      "D. Businessman"
    ],
    ["A. True", "B. False"],
    ["A. Loan", "B. Investing", "C. Lending", "D. Deposit"],
    [
      "A. Insurance Commission",
      "B. Bangko Sentral ng Pilipinas",
      "C. Department of Finance",
      "D. Securities and Exchange Commission"
    ],
    [
      "A. Retail Investor",
      "B. Venture Capitalist",
      "C. Institutional Investor",
      "D. Banks"
    ],
    [
      "A. Retail Investor",
      "B. Venture Capitalist",
      "C. Institutional Investor",
      "D. Banks"
    ],
    [
      "A. Future Value",
      "B. Present Value",
      "C. Time Value",
      "D. Investment Value"
    ],
    [
      "A. Capital Market",
      "B. Money Market",
      "C. Financial Market",
      "D. Over the Counter"
    ],
    ["A. True", "B. False"],
    [
      "A. Capital Market",
      "B. Money Market",
      "C. Financial Market",
      "D. Over the Counter"
    ],
    ["A. True", "B. False"],
    [
      "A. Banker's Acceptance",
      "B. Commercial Papers",
      "C. Treasury Bills and Notes",
      "D. Repurchase Agreements"
    ],
    [
      "A. Banker's Acceptance",
      "B. Commercial Papers",
      "C. Treasury Bills and Notes",
      "D. Repurchase Agreements"
    ],
    [
      "A. Capital Market",
      "B. Money Market",
      "C.Financial Market",
      "D.Over the Counter"
    ],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    [
      "A. Financial Market",
      "B. Primary Market",
      "C. Secondary Market",
      "D. Over the Counter"
    ],
    [
      "A. Primary Market",
      "B. Secondary Market",
      "C. Stock Market",
      "D. Over the Counter"
    ],
    ["A. True", "B. False"],
    ["A. Stock Agent", "B. Broker", "C. Investor", "D. Traders"],
    [
      "A.Fixed Income Market",
      "B. Primary Market",
      "C. Secondary Market",
      "D.Over the Counter Market"
    ],
    ["A. True", "B. False"],
    [
      "A. Corporate Banking",
      "B. Private Banking",
      "C. Investment Banking",
      "D. Retail Banking"
    ],
    [
      "A. Underwriting",
      "B. Sales and Trading",
      "C. Mergers and Acquisitions",
      "D. Equity Research"
    ],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    [
      "A. Preferred Stocks",
      "B. Common Stocks",
      "C. Cash Dividends",
      "D. Stock Dividends"
    ],
    [
      "A. Declaration Date",
      "B. Ex-Dividend Date",
      "C. Record Date",
      "D. Payment Date"
    ],
    [
      "A. Declaration Date",
      "B. Ex-Dividend Date",
      "C. Record Date",
      "D. Payment Date"
    ],
    [
      "A. Declaration Date",
      "B. Ex-Dividend Date",
      "C. Record Date",
      "D. Payment Date"
    ],
    [
      "A. Declaration Date",
      "B. Ex-Dividend Date",
      "C. Record Date",
      "D. Payment Date"
    ],
    [
      "A. Preferred Stocks",
      "B. Common Stocks",
      "C. Cash Dividends",
      "D. Stock Dividends"
    ],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    [
      "A. Blue Chip Stocks",
      "B. Income Stocks",
      "C. Growth Stocks",
      "D. Defensive Stocks"
    ],
    [
      "A. Blue Chip Stocks",
      "B. Income Stocks",
      "C. Growth Stocks",
      "D. Defensive Stocks"
    ],
    [
      "A. Blue Chip Stocks",
      "B. Income Stocks",
      "C. Growth Stocks",
      "D. Defensive Stocks"
    ],
    [
      "A. Blue Chip Stocks",
      "B. Income Stocks",
      "C. Growth Stocks",
      "D. Defensive Stocks"
    ],
    [
      "A. Growth Stocks",
      "B. Defensive Stocks",
      "C. Cyclical Stocks",
      "D.Speculative Stocks"
    ],
    [
      "A. Growth Stocks",
      "B. Defensive Stocks",
      "C. Cyclical Stocks",
      "D.Speculative Stocks"
    ],
    [
      "A. Real Return",
      "B. Nominal Return",
      "C. Realized Return",
      "D. Expected Return"
    ],
    [
      "A. Real Return",
      "B. Nominal Return",
      "C. Realized Return",
      "D. Expected Return"
    ],
    [
      "A. Real Return",
      "B. Nominal Return",
      "C. Realized Return",
      "D. Expected Return"
    ],
    [
      "A. Real Return",
      "B. Nominal Return",
      "C. Realized Return",
      "D. Expected Return"
    ],
    [
      "A. Systematic Risk",
      "B. Unsystematic Risk",
      "C. Investment Risk",
      "D. Total Risk"
    ],
    [
      "A. Systematic Risk",
      "B. Unsystematic Risk",
      "C. Investment Risk",
      "D. Total Risk"
    ],
    [
      "A. Systematic Risk",
      "B. Unsystematic Risk",
      "C. Investment Risk",
      "D. Total Risk"
    ],
    [
      "A. Risk Register",
      "B. Risk Identification",
      "C. Risk Analysis",
      "D. Risk Reduction"
    ],
    ["A. Stock Agent", "B. Bond", "C. Commercial Paper", "D. Bills"],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    ["A. Stocks", "B. Bonds", "C. Mutual Funds", "D. Derivatives"],
    ["A. True", "B. False"],
    [
      "A. Money Market Funds",
      "B. Bond Funds",
      "C.Balanced Funds",
      "D. Equity Funds"
    ],
    ["A. True", "B. False"],
    [
      "A. Money Market Funds",
      "B. Bond Funds",
      "C.Balanced Funds",
      "D. Equity Funds"
    ],
    [
      "A. Money Market Funds",
      "B. Bond Funds",
      "C.Balanced Funds",
      "D. Equity Funds"
    ],
    [
      "A. Money Market Funds",
      "B. Bond Funds",
      "C.Balanced Funds",
      "D. Equity Funds"
    ],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    [
      "A. Foreign Exchange",
      "B. Stock Market",
      "C. Spot Market",
      "D. Currency Market"
    ],
    ["A. ForEx", "B.  Real Estate", "C. Mutual Funds", "D. Stocks"],
    ["A. Gold", "B. Platinum", "C. Palladium", "D. Brass"],
    [
      "A. Mutual Funds",
      "B. Private Equity",
      "C. Balanced Funds",
      "D. Hedge Funds"
    ],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    [
      "A. Risk Analysis",
      "B. Fundamental Analysis",
      "C. Technical Analysis",
      "D. Economic Analysis"
    ],
    [
      "A. Risk Analysis",
      "B. Fundamental Analysis",
      "C. Technical Analysis",
      "D. Economic Analysis"
    ],
    [
      "A. Risk Analysis",
      "B. Fundamental Analysis",
      "C. Technical Analysis",
      "D. Economic Analysis"
    ],
    ["A. True", "B. False"],
    [
      "A. Risk Analysis",
      "B. Fundamental Analysis",
      "C. Technical Analysis",
      "D. Economic Analysis"
    ],
    [
      "A. Company Analysis",
      "B. Cost/Benefit Analysis",
      "C. Financial Statement Analysis",
      "D. Industry Analysis"
    ],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    [
      "A. Risk Analysis",
      "B. Fundamental Analysis",
      "C. Technical Analysis",
      "D. Economic Analysis"
    ],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    ["A. Support", "B.Resistance"],
    ["A. Support", "B.Resistance"],
    ["A. Breakout", "B. Breakdown"],
    ["A. Breakout", "B. Breakdown"],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    ["A. Strength", "B. Weakness", "C. Opportunities", "D. Threats"],
    ["A. Strength", "B. Weakness", "C. Opportunities", "D. Threats"],
    ["A. True", "B. False"],
  ];

  var correctAnswers = [
    "C. Financial Invesment",
    "B. Economic Investment",
    "A. Risk",
    "D. Return",
    "C. Investor",
    "B. False",
    "B. Investing",
    "D. Securities and Exchange Commission",
    "A. Retail Investor",
    "C. Institutional Investor",
    "C. Time Value",
    "C. Financial Market",
    "A. True",
    "B. Money Market",
    "A. True",
    "B. Commercial Papers",
    "D. Repurchase Agreements",
    "A. Capital Market",
    "A. True",
    "A. True",
    "C. Secondary Market",
    "C. Stock Market",
    "B. False",
    "B. Broker",
    "D.Over the Counter Market",
    "B. False",
    "C. Investment Banking",
    "A. Underwriting",
    "A. True",
    "B. False",
    "A. True",
    "A. True",
    "B. Common Stocks",
    "A. Declaration Date",
    "B. Ex-Dividend Date",
    "C. Record Date",
    "D. Payment Date",
    "A. Preferred Stocks",
    "B. False",
    "B. False",
    "A. Blue Chip Stocks",
    "B. Income Stocks",
    "C. Growth Stocks",
    "D. Defensive Stocks",
    "C. Cyclical Stocks",
    "D.Speculative Stocks"
        "B. Nominal Return",
    "A. Real Return",
    "D. Expected Return",
    "C. Realized Return",
    "C. Investment Risk",
    "A. Systematic Risk",
    "B. Unsystematic Risk",
    "C. Risk Analysis",
    "B. Bond",
    "B. False",
    "A. True",
    "A. True",
    "C. Mutual Funds",
    "B. False",
    "D. Equity Funds",
    "A. True",
    "B. Bond Funds",
    "A. Money Market Funds",
    "C.Balanced Funds",
    "A. True",
    "A. True",
    "B. False",
    "A. True",
    "B. False",
    "A. True",
    "C. Spot Market",
    "B.  Real Estate",
    "A. Gold",
    "D. Hedge Funds" "A. True",
    "B. False",
    "B. Fundamental Analysis",
    "D. Economic Analysis",
    "B. Fundamental Analysis",
    "A. True",
    "C. Technical Analysis",
    "C. Financial Statement Analysis",
    "A. True",
    "B. False",
    "C. Technical Analysis",
    "A. True",
    "B. False",
    "C. Technical Analysis",
    "A. True",
    "B. False",
    "A. Support",
    "B.Resistance",
    "A. Support",
    "B.Resistance",
    "A. True",
    "B. False",
    "A. True",
    "B. False",
    "A. Strength",
    "C. Opportunities",
    "B. False"
  ];
}

class Quiz2 extends StatefulWidget {
  @override
  State<Quiz2> createState() => _Quiz2State();
}

class _Quiz2State extends State<Quiz2> {
  //widget for choices
  Widget choose(String abcd, int x) {
    return Container(
      child: MaterialButton(
        height: 50,
        minWidth: 310,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
          side: const BorderSide(
              color: Color.fromRGBO(5, 195, 107, 100), width: 5),
        ),
        child: Text(
          abcd, //display choices from a to d
          //textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        onPressed: () {
          if (quiz.choices[questionNumber][x] ==
              quiz.correctAnswers[questionNumber]) {
            debugPrint("Correct");
          } else {
            debugPrint("Wrong");
          }
          //call a function after clicking any button
          updateQuestion();
        },
        splashColor: Color.fromRGBO(5, 195, 107, 100),
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(81, 231, 168, 100),
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(81, 231, 168, 45),
            offset: Offset(
              -3.0,
              4.0,
            ),
            blurRadius: 10.0,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text(
            "Personal Finance",
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontFamily: 'Poppins-ExtraBold',
              fontWeight: FontWeight.w800,
            ),
            textAlign: TextAlign.center,
          ),
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromRGBO(81, 231, 168, 1),
          elevation: 3, // 0 yung value para mawala yung back shadow sa app bar
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_rounded),
            iconSize: 35,
            color: Colors.black,
            onPressed: () => {
              Navigator.pop(context),
            },
          ),
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(26.0, 10.0, 26.0, 35),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(12.0, 10.0, 12.0, 15),
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      // Question No. Line
                      new Text(
                        "Question ${questionNumber}",
                        style: TextStyle(
                            fontSize: 21,
                            fontFamily: 'Poppins Medium',
                            fontWeight: FontWeight.w500),
                      ),

                      // Question-Box
                      Container(
                        margin: EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 20.0),
                        padding: const EdgeInsets.fromLTRB(14, 28, 13, 28),
                        child: new Center(
                          child: Text(
                            quiz.questions[questionNumber],
                            maxLines: 5,
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontSize: 22.0,
                              fontFamily: 'Lora',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(81, 231, 168, 100),
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(81, 231, 168, 45),
                              offset: Offset(
                                -3.0,
                                4.0,
                              ),
                              blurRadius: 10.0,
                            ),
                          ],
                        ),
                      ),
                      //display all choices
                      for (var x = 0;
                          x < quiz.choices[questionNumber].length;
                          x++) ...[
                        //call widget for choices and pass 2 parameters
                        choose(quiz.choices[questionNumber][x], x),
                        const Padding(padding: EdgeInsets.all(5.0))
                      ]
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  void updateQuestion() {
    setState(() {
      if (questionNumber == 10) {
        //Proceed to the result page
        Navigator.push(
            context, new MaterialPageRoute(builder: (context) => new Result()));
      } else {
        //proceed to next question
        questionNumber++;
      }
    });
  }
}
