import { HdsListItemCard, PrefixImage } from '@kit.UIDesignKit'
import { ImageModifier, promptAction, TextModifier } from '@kit.ArkUI'

@Component
export struct PrefixImageItem {
  build() {
    ListItem() {
      HdsListItemCard({
        textItem: {
          secondaryText: {
            text: 'Prefix Image',
            modifier: new TextModifier()
              .fontColor('#fff5f5f5')
          }
        },
        prefixItem: new PrefixImage({
          image: $r('app.media.startIcon'),
          modifier: new ImageModifier().width(12).height(12),
          onClick: () => {
            promptAction.openToast({
              message: 'Clicked the image'
            }).catch(() => {
              // TODO: Implement error handling.
            })
          }
        })
      })
    }
  }
}