import { HdsListItemCard, SuffixBadge } from '@kit.UIDesignKit'
import { TextModifier } from '@kit.ArkUI'

@Component
export struct SuffixBadgeItem {
  build() {
    ListItem() {
      HdsListItemCard({
        textItem: {
          secondaryText: {
            text: 'Suffix Badge',
            modifier: new TextModifier()
              .fontColor('#fff5f5f5')
          },
        },
        suffixItem: new SuffixBadge({
          badgeValue: 58,
          badgeColor: Color.Orange,
          textColor: Color.White
        })

      })
    }
  }
}