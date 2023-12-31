mkdir -p src/app/components/general
mkdir -p src/app/components/layout
mkdir -p src/app/components/navigation
mkdir -p src/app/components/data_entry
mkdir -p src/app/components/data_display
mkdir -p src/app/components/feedback
mkdir -p src/app/components/other

sh create-component.sh components/general/Button
sh create-component.sh components/general/FloatButton
sh create-component.sh components/general/Icon
sh create-component.sh components/general/Typography

sh create-component.sh components/layout/Divider
sh create-component.sh components/layout/Flex
sh create-component.sh components/layout/Grid
sh create-component.sh components/layout/Layout
sh create-component.sh components/layout/Space

sh create-component.sh components/navigation/Anchor
sh create-component.sh components/navigation/Breadcrumb
sh create-component.sh components/navigation/Dropdown
sh create-component.sh components/navigation/Menu
sh create-component.sh components/navigation/Pagination
sh create-component.sh components/navigation/Steps

sh create-component.sh components/data_entry/AutoComplete
sh create-component.sh components/data_entry/Cascader
sh create-component.sh components/data_entry/Checkbox
sh create-component.sh components/data_entry/ColorPicker
sh create-component.sh components/data_entry/DatePicker
sh create-component.sh components/data_entry/Form
sh create-component.sh components/data_entry/Input
sh create-component.sh components/data_entry/InputNumber
sh create-component.sh components/data_entry/Mentions
sh create-component.sh components/data_entry/Radio
sh create-component.sh components/data_entry/Rate
sh create-component.sh components/data_entry/Select
sh create-component.sh components/data_entry/Slider
sh create-component.sh components/data_entry/Switch
sh create-component.sh components/data_entry/TimePicker
sh create-component.sh components/data_entry/Transfer
sh create-component.sh components/data_entry/TreeSelect
sh create-component.sh components/data_entry/Upload

sh create-component.sh components/data_display/Avatar
sh create-component.sh components/data_display/Badge
sh create-component.sh components/data_display/Calendar
sh create-component.sh components/data_display/Card
sh create-component.sh components/data_display/Carousel
sh create-component.sh components/data_display/Collapse
sh create-component.sh components/data_display/Descriptions
sh create-component.sh components/data_display/Empty
sh create-component.sh components/data_display/Image
sh create-component.sh components/data_display/List
sh create-component.sh components/data_display/Popover
sh create-component.sh components/data_display/QRCode
sh create-component.sh components/data_display/Segmented
sh create-component.sh components/data_display/Statistic
sh create-component.sh components/data_display/Table
sh create-component.sh components/data_display/Tabs
sh create-component.sh components/data_display/Tag
sh create-component.sh components/data_display/Timeline
sh create-component.sh components/data_display/Tooltip
sh create-component.sh components/data_display/Tour
sh create-component.sh components/data_display/Tree

sh create-component.sh components/feedback/Alert
sh create-component.sh components/feedback/Drawer
sh create-component.sh components/feedback/Message
sh create-component.sh components/feedback/Modal
sh create-component.sh components/feedback/Notification
sh create-component.sh components/feedback/Popconfirm
sh create-component.sh components/feedback/Progress
sh create-component.sh components/feedback/Result
sh create-component.sh components/feedback/Skeleton
sh create-component.sh components/feedback/Spin
sh create-component.sh components/feedback/Watermark

sh create-component.sh components/other/Affix
sh create-component.sh components/other/App
sh create-component.sh components/other/ConfigProvi


#config
mkdir -p src/jest-config

