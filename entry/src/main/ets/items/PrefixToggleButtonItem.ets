import { HdsListItemCard, PrefixToggleButton } from '@kit.UIDesignKit'
import { TextModifier } from '@kit.ArkUI'

@Component
export struct PrefixToggleButtonItem {
  @State isChecked: boolean = false;

  build() {
    ListItem() {
      HdsListItemCard({
        textItem: {
          secondaryText: {
            text: 'Prefix Toggle',
            modifier: new TextModifier()
              .fontColor('#fff5f5f5')
          }
        },
        prefixItem: new PrefixToggleButton({
          isCheck: this.isChecked,
          iconValue: $r('sys.symbol.message'),
          selectColor: Color.White,
          onChange: (isOn) => {
            this.isChecked = Boolean(isOn)
          }
        })
      })
    }
  }
}