import { HdsListItemCard, SuffixBadgeAndArrow } from '@kit.UIDesignKit'
import { TextModifier } from '@kit.ArkUI'

@Component
export struct SuffixBadgeAndArrowItem {
  build() {
    ListItem() {
      HdsListItemCard({
        textItem: {
          secondaryText: {
            text: 'Suffix Badge and Arrow',
            modifier: new TextModifier()
              .fontColor('#fff5f5f5')
          },
        },
        suffixItem: new SuffixBadgeAndArrow({
          badgeValue: 58,
          badgeColor: Color.Orange,
          textColor: Color.White
        }, {
          color: Color.White
        })

      })
    }
  }
}