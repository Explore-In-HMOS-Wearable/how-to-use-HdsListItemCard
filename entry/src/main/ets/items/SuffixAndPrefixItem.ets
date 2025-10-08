import { HdsListItemCard, PrefixImage, SuffixTextAndArrow } from '@kit.UIDesignKit'
import { promptAction, TextModifier } from '@kit.ArkUI'

@Component
export struct SuffixAndPrefixItem {
  build() {
    ListItem() {
      HdsListItemCard({
        // You can refer other prefix components for more.
        prefixItem: new PrefixImage({
          image: $r('app.media.startIcon'),
          onClick: () => {
            promptAction.openToast({
              message: 'Clicked the image'
            }).catch(() => {
              // TODO: Implement error handling.
            })
          }
        }),
        textItem: {
          primaryText: {
            text: 'Prefix'
          },
          secondaryText: {
            text: 'And'
          },
          description: {
            text: 'Suffix'
          }
        },
        // You can refer other suffix components for more.
        suffixItem: new SuffixTextAndArrow({
          text: 'More',
          modifier: new TextModifier().fontColor(Color.White).fontSize(16).fontWeight(FontWeight.Bold)
        }, {
          color: Color.White
        }),
        onClick: () => {
          promptAction.openToast({
            message: 'Clicked the list item',
            duration: 2000
          }).catch(() => {
            // TODO: Implement error handling.
          })
        },
        cardHeight: '100vp',
        cardWidth: '200vp',
        cardBackgroundColor: '#ff6b6b6b',
        cardBorderRadius: 12,
        cardPrefixMargin: 12,
        cardSuffixMargin: 12,
        hoverBorderRadius: 12

      })
    }
  }
}