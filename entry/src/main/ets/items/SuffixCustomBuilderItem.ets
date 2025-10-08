import { HdsListItemCard, SuffixCustomBuilder } from '@kit.UIDesignKit'
import { TextModifier } from '@kit.ArkUI'

@Component
export struct SuffixCustomBuilderItem {
  @Builder
  CustomBuilder() {
    Column() {
      Row({ space: 8 }) {
        Text('Demo').fontSize(16).fontWeight(FontWeight.Bold).fontColor(Color.White)
        Image($r('app.media.startIcon')).height(12).width(12)
      }.width('100%').justifyContent(FlexAlign.End).padding({ right: 24 })
    }.width('100%')
  }

  build() {
    ListItem() {
      HdsListItemCard({
        textItem: {
          secondaryText: {
            text: 'Custom',
            modifier: new TextModifier()
              .fontColor('#fff5f5f5')
          },
          description: {
            text: 'Builder'
          }
        },
        suffixItem: new SuffixCustomBuilder(this.CustomBuilder())

      })
    }
  }
}