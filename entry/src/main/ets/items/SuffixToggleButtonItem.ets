import { HdsListItemCard, SuffixToggleButton } from '@kit.UIDesignKit'
import { TextModifier } from '@kit.ArkUI'

@Component
export struct SuffixToggleButtonItem {
  @State isChecked: boolean = false;

  build() {
    ListItem() {
      HdsListItemCard({
        textItem: {
          secondaryText: {
            text: 'Suffix Toggle Button',
            modifier: new TextModifier()
              .fontColor('#fff5f5f5')
          }
        },
        suffixItem: new SuffixToggleButton({
          isCheck: this.isChecked,
          iconValue: $r('sys.symbol.alarm'),
          selectColor: Color.White,
          onChange: (isOn: boolean) => {
            // this.isChecked = isOn
            this.isChecked = Boolean(isOn)
          }
        })

      })
    }
  }
}