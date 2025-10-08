import { SuffixImageItem } from '../items/SuffixImageItem';
import { SuffixTextItem } from '../items/SuffixTextItem';
import { SuffixLoadingProgressItem } from '../items/SuffixLoadingProgressItem';
import { SuffixRadioItem } from '../items/SuffixRadioItem';
import { SuffixCheckboxItem } from '../items/SuffixCheckboxItem';
import { SuffixSwitchItem } from '../items/SuffixSwitchItem';
import { SuffixArrowItem } from '../items/SuffixArrowItem';
import { SuffixBadgeItem } from '../items/SuffixBadgeItem';
import { SuffixButtonItem } from '../items/SuffixButtonItem';
import { SuffixIconItem } from '../items/SuffixIconItem';
import { SuffixSubIconItem } from '../items/SuffixSubIconItem';
import { SuffixSelectItem } from '../items/SuffixSelectItem';
import { SuffixToggleButtonItem } from '../items/SuffixToggleButtonItem';
import { SuffixBadgeAndArrowItem } from '../items/SuffixBadgeAndArrowItem';
import { SuffixTextAndArrowItem } from '../items/SuffixTextAndArrowItem';
import { SuffixArrowIconTextItem } from '../items/SuffixArrowIconTextItem';
import { SuffixCustomBuilderItem } from '../items/SuffixCustomBuilderItem';
import { PrefixImageItem } from '../items/PrefixImageItem';
import { PrefixIconItem } from '../items/PrefixIconItem';
import { PrefixBadgeItem } from '../items/PrefixBadgeItem';
import { PrefixSwitchItem } from '../items/PrefixSwitchItem';
import { PrefixToggleButtonItem } from '../items/PrefixToggleButtonItem';
import { PrefixButtonItem } from '../items/PrefixButtonItem';
import { PrefixCustomBuilderItem } from '../items/PrefixCustomBuilderItem';
import { SuffixAndPrefixItem } from '../items/SuffixAndPrefixItem';

@Entry
@Component
struct Index {
  private scroller: ListScroller = new ListScroller();

  build() {
    Column() {
      List({ space: 5, scroller: this.scroller }) {

        ListItem() {
          Row() {
            Text('UI Design HDSListItemCard Examples').fontColor(Color.White).width('80%')
          }.width('100%').justifyContent(FlexAlign.Center)
        }

        // Prefix And Suffix
        SuffixAndPrefixItem()

        // Prefix Image
        PrefixImageItem()

        // Prefix Icon
        PrefixIconItem()

        // Prefix Badge
        PrefixBadgeItem()

        // Prefix Switch
        PrefixSwitchItem()

        // Prefix Toggle Button
        PrefixToggleButtonItem()

        // Prefix Button
        PrefixButtonItem()

        // Prefix Custom Builder
        PrefixCustomBuilderItem()

        // Suffix Image
        SuffixImageItem()

        // Suffix Text
        SuffixTextItem()

        // Suffix Loading Progress
        SuffixLoadingProgressItem()

        // Suffix Radio
        SuffixRadioItem()

        // Suffix Checkbox
        SuffixCheckboxItem()

        // Suffix Switch
        SuffixSwitchItem()

        // Suffix Arrow
        SuffixArrowItem()

        // Suffix Badge
        SuffixBadgeItem()

        // Suffix Button
        SuffixButtonItem()

        // Suffix Icon
        SuffixIconItem()

        // Suffix Sub Icon
        SuffixSubIconItem()

        // Suffix Select
        SuffixSelectItem()

        // Suffix Toggle Button
        SuffixToggleButtonItem()

        // Suffix Badge and Arrow
        SuffixBadgeAndArrowItem()

        // Suffix Text and Arrow
        SuffixTextAndArrowItem()

        // Suffix Arrow Icon Text
        SuffixArrowIconTextItem()

        // Suffix Custom Builder
        SuffixCustomBuilderItem()
      }
      .width('100%')
      .height('100%')
      .margin(10)
      .padding({
        bottom: 20
      })
    }.backgroundColor(0x1a0a59f7).height('100%')
  }
}