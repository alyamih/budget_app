import 'package:budget_app/model/news_item.dart';
import 'package:budget_app/pages/description_news_page.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List<NewsItem> newsList = [
    NewsItem(
      title:
          'Unemployment fell for Black women in February as more joined the labor force',
      text:
          'Unemployment among Black women fell in February as the number of those looking for work increased, data released Friday by the U.S. government showed. The U.S. unemployment rate edged higher last month to 3.9% from 3.7% in January, according to the U.S. Bureau of Labor Statistics on Friday. Adult women age 20 and older in the labor force followed that trend, with the unemployment rate ticking up to 3.5% from 3.2%. The percentage of unemployed Black women, however, fell to 4.4% from 4.8%. This comes as the labor force participation rate within the group — which measures how many workers are currently employed or searching for work — rises to 63.4% from 62.9%.',
      image:
          'https://image.cnbcfm.com/api/v1/image/107237218-1683504529748-gettyimages-1487833251-029a0133_blyiizok.jpeg?v=1709916398&w=740&h=416&ffmt=webp&vtcrop=y',
    ),
    NewsItem(
      title:
          'U.S. job growth totaled 275,000 in February but unemployment rate rose to 3.9%',
      text:
          'Job creation topped expectations in February, but the unemployment rate moved higher and employment growth from the previous two months wasn’t nearly as hot as initially reported. Nonfarm payrolls increased by 275,000 for the month while the jobless rate moved higher to 3.9%, the Labor Department’s Bureau of Labor Statistics reported Friday. Economists surveyed by Dow Jones had been looking for payroll growth of 198,000. February was a step higher in growth from January, which saw a steep downward revision to 229,000, from the initially reported 353,000. Job growth in December also was revised down to 290,000 from 333,000, bringing the two-month total to 167,000 fewer jobs than initially reported.',
      image:
          'https://image.cnbcfm.com/api/v1/image/107363787-17061085342022-09-01t184946z_946092228_rc2f8w90zj6x_rtrmadp_0_usa-economy.jpeg?v=1706108566&w=600&h=630&ffmt=webp&vtcrop=y',
    ),
    NewsItem(
      title:
          'Jobs report Friday is expected to show a slowing but still healthy labor market',
      text:
          'Job growth in the U.S. likely decelerated in February while still a long way from stall speed as companies continue to keep up demand for workers. When the Labor Department releases the nonfarm payrolls report Friday at 8:30 a.m. ET, it’s expected to show growth of 198,000 and the unemployment rate holding steady at 3.7%, according to Dow Jones consensus estimates. If the forecast is close to accurate, it would mark a considerable downshift from January’s explosive growth of 353,000, but still representative of a fairly vibrant labor market. “This is kind of a cautious labor market. Employers are hiring to keep pace with business activity,” said Julia Pollak, chief economist at ZipRecruiter. “Many businesses still report higher than expected sales. But they’re not aggressively hiring for growth and to expand. For that, many are still taking a wait-and-see approach.” January’s surge followed a robust gain of 333,000 in December, seemingly countering the picture of an apprehensive hiring climate. However, Pollak noted that both numbers were inflated from seasonal distortions, where retailers in particular cut fewer holiday jobs than expected. February, though, could see growth as high as 240,000, as companies look to fill an elevated level of open positions, Pollak said.',
      image:
          'https://image.cnbcfm.com/api/v1/image/107368487-1706900807852-gettyimages-1980647268-job260986_qquwmhgr.jpeg?v=1706900896&w=740&h=416&ffmt=webp&vtcrop=y',
    ),
    NewsItem(
      title:
          'Layoffs rise to the highest for any February since 2009, Challenger says',
      text:
          'Layoff announcements in February hit their highest level for the month since the global financial crisis, according to outplacement firm Challenger, Gray & Christmas. The total of 84,638 planned cuts showed an increase of 3% from January and 9% from the same month a year ago, with technology and finance companies at the forefront. From a historical perspective, this was the worst February since 2009, which saw 186,350 announcements as the worst of the financial crisis was seemingly coming to an end. Financial markets bottomed the following month, paving the way for the longest economic expansion on record, lasting until the Covid pandemic in March 2020. For the year, companies have listed 166,945 cuts, a decrease of 7.6% from a year ago. “As we navigate the start of 2024, we’re witnessing a persistent wave of layoffs,” said Andrew Challenger, the firm’s labor and workplace expert. “Businesses are aggressively slashing costs and embracing technological innovations, actions that are significantly reshaping staffing needs.”',
      image:
          'https://image.cnbcfm.com/api/v1/image/107376501-1708554284856-gettyimages-2021277707-ocr-l-a2-jobfair-06-pb.jpeg?v=1708554369&w=740&h=416&ffmt=webp&vtcrop=y',
    ),
    NewsItem(
      title:
          'Private payrolls rose by 140,000 in February, less than expected, ADP reports',
      text:
          'Private sector job growth improved during February though growth was slightly less than expected, payrolls processing firm ADP reported Wednesday. Companies added 140,000 positions for the month, an increase from the upwardly revised 111,000 in January but a bit below the Dow Jones estimate for 150,000. Job gains came across multiple areas, led by leisure and hospitality with 41,000 and construction, which added 28,000 positions. Other industries showing solid gains included trade, transportation and utilities (24,000), finance (17,000), and the other services category (14,000). Of the total, 110,000 came from the services sector while goods producers added 30,000. Growth was concentrated among larger companies, as establishments with fewer than 50 employees contributed just 13,000 to the total. Along with the job growth, annual pay increased 5.1% for those staying in their jobs, which ADP said was the smallest rise since August 2021, a potential indication that inflation pressures are receding. The report comes with the labor market getting added attention for signals of whether U.S. economic growth will stall this year after gross domestic product posted a solid 2.5% annualized gain in 2023.',
      image:
          'https://image.cnbcfm.com/api/v1/image/107368486-1706900807187-gettyimages-1980645180-job261154_mztmceqv.jpeg?v=1706900896&w=600&h=338&ffmt=webp&vtcrop=y',
    ),
    NewsItem(
      title:
          'Egypt hikes interest rates by 600 basis points, pound crumbles to record low',
      text:
          'Egypt’s pound hit a record low against the dollar on Wednesday after its central bank hiked interest rates by 600 points and devalued the currency. The steps were meant to facilitate an agreement with the International Monetary Fund, which is expected to confirm the extension of its current \$3 billion financial support package for Egypt. The Egyptian pound was trading at roughly 50 to the dollar following the announcement, from 30.85 previously, according to LSEG data. The country’s key interest rate now stands at 27.25%, the central bank said Wednesday. The development “shows that policymakers are committed to the turn back toward economic orthodoxy. This is likely to pave the way for an IMF deal within hours,” James Swanston, a Middle East and North Africa economist at London-based Capital Economics, wrote in a research note. “This appears to be a positive step for Egypt on the path out of its current crisis,” he wrote. Egypt, the Arab world’s most populous country at roughly 110 million people, is facing a protracted shortage of foreign currency. The country’s moves suggest it is confident that hard currency inflows are on the horizon, particularly from an investment deal signed last month with the United Arab Emirates worth \$35 billion and the expectation of an agreement with the IMF for further support.',
      image:
          'https://image.cnbcfm.com/api/v1/image/101055076-EGP.jpg?v=1379948487&w=600&h=338&ffmt=webp&vtcrop=y',
    ),
    NewsItem(
      title: 'Turkish annual inflation soars to 67% in February',
      text:
          'Turkish annual consumer price inflation soared to 67.07% in February, the Turkish Statistical Institute said Monday, coming in above expectations. Analysts polled by Reuters had anticipated annual inflation would climb to 65.7% last month. The combined sector of hotels, cafes and restaurants saw the greatest annual price inflation increase at 94.78%, followed by education at 91.84%, while the rate for health stood at 81.25% and transportation at 77.98%, according to the statistical institute. Food and nonalcoholic beverage consumer prices jumped 71.12% in February year on year and recorded a surprisingly large monthly rise of 8.25%. The monthly rate of change for the country’s inflation from January to February was 4.53%. The strong figures are fueling concerns that Turkey’s central bank, which had indicated last month that its painful eight-month-long rate-hiking cycle was over, may have to return to tightening. “The stronger-than-expected rise in Turkish inflation to 67.1% y/y in February adds to our concerns given that it comes on the back of a large increase in inflation in January and the strength of household spending growth in Q4,” Liam Peach, senior emerging markets economist at London-based Capital Economics, wrote in a research note Monday.',
      image:
          'https://image.cnbcfm.com/api/v1/image/107072630-1654679249475-gettyimages-1267679563-_ayh9944.jpeg?v=1709537807&w=740&h=416&ffmt=webp&vtcrop=y',
    ),
    NewsItem(
      title:
          '‘Last chance saloon’: UK finance minister expected to pledge pre-election tax cuts',
      text:
          'LONDON — Economists expect U.K. Finance Minister Jeremy Hunt to use a small fiscal windfall to deliver a modest package of tax cuts at his Spring Budget on Wednesday. Heading into what will likely be the Conservative government’s last fiscal event before the country’s upcoming General Election, Hunt is under pressure to offer a sweetener to voters as his party trails the main opposition Labour Party by more than 20 points across all national polls. But he must also navigate the constraints of fragile public finances and a stagnant economy that recently entered a modest technical recession. On the upside, inflation has fallen faster than anticipated and market expectations for interest rates are well below where they were going into Hunt’s Autumn Statement in November. The Treasury pre-announced plans over the weekend to deliver up to £1.8 billion (\$2.3 billion) worth of benefits by boosting public sector productivity, including releasing police time for more frontline work. The Independent Office for Budget Responsibility estimates that returning to levels of pre-pandemic productivity could save the Treasury up to £20 billion per year. Hunt will also announce £360 million in funding to boost research and development (R&D) and manufacturing projects across the life sciences, automotive and aerospace sectors, the Treasury said Monday.',
      image:
          'https://imgproxy.natucate.com/zNWdfsJ8gOR1_hAw2ppCOBMMzVyN5KkDqMJ4eEDIye4/rs:fill/g:ce/w:3840/h:2160/aHR0cHM6Ly93d3cubmF0dWNhdGUuY29tL21lZGlhL3BhZ2VzL3JlaXNlemllbGUvZDM0MTBkYTMtZWM4Yi00ODM5LTgzYzYtMWNkM2M3OGNlNDgzL2FlMDE2YWY1OTYtMTY3OTQ4Njg2OS9ncm9zc2JyaXRhbm5pZW4tdWstbGFlbmRlcmluZm9ybWF0aW9uZW4tYnJ1ZWNrZS10b3dlci1icmlkZ2UtbG9uZG9uLW5hdHVjYXRlLmpwZw',
    ),
    NewsItem(
      title:
          'Inflation remains sticky in Europe, with core prices cooling less than expected',
      text:
          'Inflation in the 20-nation euro zone eased to 2.6% in February, flash figures showed on Friday, but both the headline and core figures were higher than expected. Economists polled by Reuters had forecast a headline reading of 2.5%. Core inflation, stripping out volatile components of energy, food, alcohol and tobacco, was 3.1% — above the 2.9% expected. The European Union statistics agency said food, alcohol and tobacco had the highest inflation rate in February at 4%, followed by services at 3.9%. Energy prices, which had swollen last year as a result of Russia’s invasion of Ukraine, continued to reduce, with the rate of deflation moving from -6.1% to -3.7%. The headline print previously came in at 2.8% in January, with further easing expected after price rises cooled in Germany, France and Spain. Investors are hunting for clues on when the European Central Bank will start to bring down interest rates, with market pricing pointing to a June cut. Yet many ECB officials still stress that they need spring wage negotiations to conclude before they have a clearer picture of domestic inflationary pressures. The February figures will be a mixed bag for policymakers, as core inflation is holding above 3% even as the headline rate moves toward the ECB’s 2% target. Price rises have nonethless cooled significantly from their peak of 10.6% in October 2022.',
      image:
          'https://image.cnbcfm.com/api/v1/image/107380898-1709284431472-gettyimages-1980489541-dsc_8144_fxv6o5es.jpeg?v=1709284477&w=740&h=416&ffmt=webp&vtcrop=y',
    ),
    NewsItem(
      title:
          'Key Fed inflation measure rose 0.4% in January as expected, up 2.8% from a year ago',
      text:
          'Inflation rose in line with expectations in January, according to an important gauge the Federal Reserve uses as it deliberates cutting interest rates. The personal consumption expenditures price index excluding food and energy costs increased 0.4% for the month and 2.8% from a year ago, as expected according to the Dow Jones consensus estimates. The monthly gain was just 0.1% in December and 2.9% from the year prior. Headline PCE, including the volatile food and energy categories, increased 0.3% monthly and 2.4% on a 12-month basis, also as forecast, according to the numbers released Thursday by the Commerce Department’s Bureau of Economic Analysis. The respective December numbers were 0.1% and 2.6%. The moves came amid an unexpected jump in personal income, which rose 1%, well above the forecast for 0.3%. Spending decreased 0.1% versus the estimate for a 0.2% gain. January’s price rises reflected an ongoing shift to services over goods as the economy normalizes from the Covid pandemic disruptions. Services prices increased 0.6% on the month while goods fell 0.2%; on a 12-month basis, services rose 3.9% and goods were down 0.5%. Within those categories, food prices accelerated 0.5%, offset by a 1.4% slide in energy. On a year-over-year basis, food was up 1.4% while energy fell 4.9%.',
      image:
          'https://image.cnbcfm.com/api/v1/image/107373508-1709229098606-107373508-1707921237385-gettyimages-2008640078-q1016679_y6f1ovau.jpg?v=1709229119&w=600&h=338&ffmt=webp&vtcrop=y',
    ),
    NewsItem(
      title:
          'For Black workers, progress in the workplace but still a high hill to climb',
      text:
          'Looking at the state of Black employment in America tells a mixed story: Much progress has been made in the age of the Covid-19 pandemic and beyond, but much is left to be done. In the nearly four years that have passed since the pandemic upended the U.S. economy, the advancement for Black people has been unmistakable: a surge in earnings that outdid the gains for both white and Hispanic people, an unemployment rate that has fallen more than a percentage point from where it stood in January 2020 and a general sense that the collective consciousness has been raised regarding inequality in the workplace. Yet, there are still racial discrepancies in terms of earnings. Black workers are still notably underrepresented in some professions, particularly high-end tech, and efforts to address some of these issues have fallen out of favor amid criticism that they have gone too far and are inefficient. On balance, though, there’s a feeling of optimism that real progress has been made. “This recovery really stretched the limits of what policymakers thought was possible for Black workers,” said Jessica Fulton, interim president at the Joint Center for Political and Economic Studies, a Washington, D.C.-based think tank that focuses on issues for people and communities of color. “We were in a situation where folks accepted that Black unemployment was going to always be high and there was nothing that they could do about it. So I think this is an opportunity to continue to push the limits of what’s possible.”',
      image:
          'https://image.cnbcfm.com/api/v1/image/107378900-1709043774500-IMG_9624.JPG?v=1709065438&w=740&h=416&ffmt=webp&vtcrop=y',
    ),
    NewsItem(
      title:
          'Germany’s housebuilding sector is in a ‘confidence crisis’ as the economy struggles',
      text:
          'Germany’s housebuilding sector has gone from bad to worse in recent months. Economic data is painting a concerning picture, and industry leaders appear uneasy. “The housebuilding sector is, I would say, a little bit in a confidence crisis,” Dominik von Achten, chairman of German building materials company Heidelberg Materials, told CNBC’s “Squawk Box Europe” on Thursday. “There are too many things that have gone in the wrong direction,” he said, adding that the company’s volumes were down significantly in Germany. In January both the current sentiment and expectations for the German residential construction sector fell to all-time lows, according to data from the Ifo Institute for Economic Research. The business climate reading fell to a negative 59 points, while expectations dropped to negative 68.9 points in the month. “The outlook for the coming months is bleak,” Klaus Wohlrabe, head of surveys at Ifo, said in a press release at the time.',
      image:
          'https://image.cnbcfm.com/api/v1/image/107376744-1708604642485-gettyimages-1863305497-20090101231221-99-371389.jpeg?v=1708604681&w=740&h=416&ffmt=webp&vtcrop=y',
    ),
    NewsItem(
      title: 'Turkey ends hiking cycle after 8 months, holding key rate at 45%',
      text:
          'Turkey’s central bank held its key interest rate on Thursday, keeping it at 45% despite soaring inflation after eight consecutive months of hikes. The move was widely expected as the bank indicated in January that its 250-basis-point hikes would be its last for the year, despite inflation now at roughly 65%. Consumer prices in the country of 85 million last month jumped 6.7% from December — its biggest monthly jump since August — according to the Turkish central bank’s figures. They rose 64.8% year-on-year in January. Turkey’s key interest rate climbed by a cumulative 3,650 basis points since May 2023. The latest decision to hold rates, rather than cut them, signals consistency from the newly appointed Turkish central bank governor Fatih Karahan with the strategy of his predecessor, Hafize Erkan. Karahan took office in early February. Analysts viewed the accompanying press statement from the central bank as hawkish and indicating no easing of rates in the near future. “The Committee assesses that the current level of the policy rate will be maintained until there is a significant and sustained decline in the underlying trend of monthly inflation and until inflation expectations converge to the projected forecast range,” the bank’s statement said. “Monetary policy stance will be tightened in case a significant and persistent deterioration in inflation outlook is anticipated.”',
      image:
          'https://image.cnbcfm.com/api/v1/image/105390644-1533927291657gettyimages-577594748.jpeg?v=1708600975&w=740&h=416&ffmt=webp&vtcrop=y',
    ),
    NewsItem(
      title:
          'January wholesale prices rise more than expected, another sign of persistent inflation',
      text:
          'Wholesale prices rose more than expected in January, further complicating the inflation picture, according to a U.S. Department of Labor report Friday. The producer price index, a measure of prices received by producers of domestic goods and services, rose 0.3% for the month, the biggest move since August. Economists surveyed by Dow Jones had been looking for an increase of just 0.1%. PPI fell 0.2% in December. Excluding food and energy, core PPI increased 0.5%, also against expectations for a 0.1% gain. PPI excluding food, energy and trade services jumped 0.6%, its biggest one-month advance since January 2023. The report comes just days after the consumer price index showed inflation holding stubbornly higher despite Federal Reserve expectations for moderation through the year. The CPI was up 3.1% from a year ago, down from its December level but still well ahead of the Fed’s goal for 2% inflation. On a core basis, which the Fed focuses on more as a longer-term gauge of inflation, the CPI was up 3.9%. CPI differs from PPI in that it measures the prices consumers actually pay in the marketplace. Markets fell sharply after Tuesday’s CPI reading, and there were fears that a hot PPI number also could cause another jolt. Expectations have been rising high that the Fed would use the easing inflation numbers as incentive to cut interest rates aggressively this year, but traders have had to pare back those expectations in recent days as inflation has shown unexpected persistence.',
      image:
          'https://image.cnbcfm.com/api/v1/image/107371665-1708098059674-107371665-1707500420790-gettyimages-1961127378-womeninvest.jpg?v=1708098097&w=600&h=338&ffmt=webp&vtcrop=y',
    ),
    NewsItem(
      title:
          'British retail rebound provides some hope for recession-hit economy',
      text:
          'LONDON — Stronger-than-expected January retail sales provided a glimmer of light for the struggling British economy on Friday — and suggest that the country’s recession will be short-lived, according to some economists. Sales rebounded by 3.4% from December, according to the Office for National Statistics, the strongest monthly gain since April 2021. Economists polled by Reuters had expected a more modest growth of 1.5%. Sales volumes increased in all areas except closing, as food shops saw the biggest boost. Consumers “spent more for less in January,” the ONS said, with the total they paid rising by 3.9%.The latest figures follow the news of Thursday that the British economy entered a technical recession in the final quarter of 2023. Gross domestic product declined by 0.3%, following a 0.1% contraction in the third quarter. Sales over the key holiday trading period were far weaker than expected, with December seeing the biggest monthly fal since January 2021. British retail sales meanwhile remain 1.3% below their pre-pandemic level from February 2020, according to the ONS. The “strong pick up in sales suggests the worst is now behind the retail sector and falling inflation and rising wages in 2024 will provide a strong platform for recovery,” Joe Maher, assistant economist at Capital Economics, said in a note.',
      image:
          'https://image.cnbcfm.com/api/v1/image/107374657-1708074977991-gettyimages-1943416574-pezzali-notitle240120_npndH.jpeg?v=1708074988&w=600&h=338&ffmt=webp&vtcrop=y',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF252730),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 65, 16, 26),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.chevron_left,
                    color: Color(0xFF7082E1),
                  ),
                  Text(
                    'Back',
                    style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        color: Color(0xFF7082E1),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'News',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: getNews(),
                )
              ],
            )),
          ),
        ],
      ),
    );
  }

  Widget getNews() {
    List<Widget> list = [];
    for (var news in newsList) {
      list.add(InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute<void>(
                builder: (BuildContext context) => DescriptionNewsPage(
                      news: news,
                    )),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              color: const Color(0xFF2E313C),
              borderRadius: BorderRadius.circular(8)),
          child: Column(children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 112,
                  width: 112,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          topLeft: Radius.circular(8)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: CachedNetworkImageProvider(
                            news.image!,
                          ))),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 29, top: 13),
                        child: Row(
                          children: [
                            Flexible(
                              child: Text(
                                news.title!,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontFamily: 'SF Pro Text',
                                    color: Colors.white,
                                    height: 24 / 20,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Row(
                          children: [
                            Flexible(
                              child: Text(
                                'Read more',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontFamily: 'SF Pro Text',
                                    color: Color(0xFF7082E1),
                                    height: 1,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ]),
        ),
      ));
      list.add(const SizedBox(
        height: 16,
      ));
    }
    return Column(
      children: list,
    );
  }
}
