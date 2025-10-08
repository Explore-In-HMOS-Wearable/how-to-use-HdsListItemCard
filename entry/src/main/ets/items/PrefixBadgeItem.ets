import { HdsListItemCard, PrefixBadge } from '@kit.UIDesignKit'
import { TextModifier } from '@kit.ArkUI'

@Component
export struct PrefixBadgeItem {
  build() {
    ListItem() {
      HdsListItemCard({
        textItem: {
          secondaryText: {
            text: 'Prefix Badge',
            modifier: new TextModifier()
              .fontColor('#fff5f5f5')
          },
        },
        prefixItem: new PrefixBadge({
          badgeValue: 58,
          badgeColor: Color.Orange,
          textColor: Color.White
        })
      })
    }
  }
}