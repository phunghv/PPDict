/*
 * Copyright (c) 2011-2015 BlackBerry Limited.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import bb.cascades 1.4

Page {
    Menu.definition: MenuDefinition {
        helpAction: HelpActionItem {

        }
        settingsAction: SettingsActionItem {

        }
        actions: [
            ActionItem {
                title: "Dicts"
            },
            ActionItem {
                title: "About"
            }
        ]
    }

    Container {
        layout: StackLayout {
            orientation: LayoutOrientation.BottomToTop
        }

        TextField {
            id: input_text
            hintText: qsTr("Enter text")
            textFormat: TextFormat.Plain
            input.keyLayout: KeyLayout.Text
            textStyle.fontSize: FontSize.Medium
            verticalAlignment: VerticalAlignment.Center
            onTextChanging: {
                result.text = input_text.text
            }
            maximumLength: 50

        }
        Container {
            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight
            }
            topMargin: 5.0
            leftMargin: 5.0
            rightMargin: 5.0
            bottomMargin: 5.0
            ListView {

            }
            Label {
                id: result
                multiline: true
                leftMargin: 5.0
                topMargin: 5.0
                bottomMargin: 5.0

            }
        }
    }
}
