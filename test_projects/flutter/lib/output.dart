library material;// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/widgets.dart' as _i1;import 'package:flutter/src/foundation/key.dart' as _i2;import 'package:flutter/src/widgets/framework.dart' as _i3;import 'package:flutter/material.dart' as _i4;import 'dart:ui' as _i5;import 'package:flutter/src/rendering/proxy_box.dart' as _i6;import 'package:flutter/src/rendering/custom_paint.dart' as _i7;import 'package:flutter/src/painting/border_radius.dart' as _i8;import 'package:flutter/src/painting/box_border.dart' as _i9;import 'package:vector_math/vector_math_64.dart' as _i10;import 'package:flutter/src/painting/alignment.dart' as _i11;import 'package:flutter/src/rendering/layer.dart' as _i12;import 'package:flutter/src/painting/box_fit.dart' as _i13;import 'package:flutter/src/painting/edge_insets.dart' as _i14;import 'package:flutter/src/rendering/shifted_box.dart' as _i15;import 'package:flutter/src/rendering/custom_layout.dart' as _i16;import 'package:flutter/src/rendering/box.dart' as _i17;import 'package:flutter/src/painting/basic_types.dart' as _i18;import 'package:flutter/src/rendering/stack.dart' as _i19;import 'package:flutter/src/rendering/flex.dart' as _i20;import 'package:flutter/src/rendering/wrap.dart' as _i21;import 'package:flutter/src/rendering/flow.dart' as _i22;import 'package:flutter/src/painting/inline_span.dart' as _i23;import 'package:flutter/src/painting/text_painter.dart' as _i24;import 'package:flutter/src/painting/text_scaler.dart' as _i25;import 'package:flutter/src/painting/strut_style.dart' as _i26;import 'package:flutter/src/rendering/selection.dart' as _i27;import 'package:flutter/src/animation/animation.dart' as _i28;import 'package:flutter/src/painting/decoration_image.dart' as _i29;import 'package:flutter/src/services/asset_bundle.dart' as _i30;import 'package:flutter/src/services/mouse_tracking.dart' as _i31;import 'package:flutter/src/services/mouse_cursor.dart' as _i32;import 'package:flutter/src/semantics/semantics.dart' as _i33;import 'package:flutter/src/widgets/basic.dart' as _i34;import 'package:flutter/src/widgets/navigator.dart' as _i35;import 'package:flutter/src/widgets/app.dart' as _i36;import 'package:flutter/src/widgets/notification_listener.dart' as _i37;import 'package:flutter/src/painting/text_style.dart' as _i38;import 'package:flutter/src/widgets/localizations.dart' as _i39;import 'package:flutter/src/widgets/widget_inspector.dart' as _i40;import 'package:flutter/src/widgets/shortcuts.dart' as _i41;import 'package:flutter/src/widgets/actions.dart' as _i42;import 'package:flutter/src/widgets/focus_manager.dart' as _i43;import 'package:flutter/src/foundation/basic_types.dart' as _i44;import 'package:flutter/src/widgets/media_query.dart' as _i45;import 'package:flutter/src/widgets/overlay.dart' as _i46;import 'package:flutter/src/widgets/table.dart' as _i47;import 'package:flutter/src/rendering/table.dart' as _i48;import 'package:flutter/src/rendering/table_border.dart' as _i49;import 'package:flutter/src/painting/image_provider.dart' as _i50;import 'package:flutter/src/widgets/image.dart' as _i51;import 'package:flutter/src/widgets/scroll_controller.dart' as _i52;import 'package:flutter/src/widgets/scroll_physics.dart' as _i53;import 'package:flutter/src/widgets/scrollable.dart' as _i54;import 'package:flutter/src/widgets/scrollable_helpers.dart' as _i55;import 'package:flutter/src/gestures/recognizer.dart' as _i56;import 'package:flutter/src/widgets/scroll_configuration.dart' as _i57;import 'package:flutter/src/gestures/tap.dart' as _i58;import 'package:flutter/src/gestures/long_press.dart' as _i59;import 'package:flutter/src/gestures/drag_details.dart' as _i60;import 'package:flutter/src/gestures/monodrag.dart' as _i61;import 'package:flutter/src/gestures/force_press.dart' as _i62;import 'package:flutter/src/gestures/scale.dart' as _i63;import 'package:flutter/src/widgets/gesture_detector.dart' as _i64;import 'package:flutter/src/widgets/scroll_notification.dart' as _i65;import 'package:flutter/src/widgets/transitions.dart' as _i66;import 'package:flutter/src/painting/decoration.dart' as _i67;import 'package:flutter/src/foundation/change_notifier.dart' as _i68;import 'package:flutter/src/widgets/selectable_region.dart' as _i69;import 'package:flutter/src/widgets/text_selection.dart' as _i70;import 'package:flutter/src/widgets/magnifier.dart' as _i71;import 'package:flutter/src/widgets/heroes.dart' as _i72;import 'package:flutter/src/widgets/focus_traversal.dart' as _i73;import 'package:flutter/src/widgets/page_storage.dart' as _i74;import 'package:flutter/src/rendering/object.dart' as _i75;import 'package:flutter/src/rendering/view.dart' as _i76;import 'package:flutter/src/animation/curves.dart' as _i77;import 'package:flutter/src/foundation/platform.dart' as _i78;import 'package:flutter/src/services/restoration.dart' as _i79;import 'package:flutter/src/widgets/editable_text.dart' as _i80;import 'package:flutter/src/services/text_input.dart' as _i81;import 'package:flutter/src/widgets/tap_region.dart' as _i82;import 'package:flutter/src/services/text_formatter.dart' as _i83;import 'package:flutter/src/services/autofill.dart' as _i84;import 'package:flutter/src/widgets/spell_check.dart' as _i85;import 'package:flutter/src/widgets/undo_history.dart' as _i86;import 'package:flutter/src/widgets/autofill.dart' as _i87;import 'package:flutter/src/widgets/scroll_delegate.dart' as _i88;import 'package:flutter/src/rendering/sliver.dart' as _i89;import 'package:flutter/src/rendering/sliver_grid.dart' as _i90;import 'package:flutter/src/widgets/selection_container.dart' as _i91;import 'package:flutter/src/widgets/platform_menu_bar.dart' as _i92;import 'package:flutter/src/gestures/tap_and_drag.dart' as _i93;import 'package:flutter/src/painting/borders.dart' as _i94;import 'package:flutter/src/widgets/scrollbar.dart' as _i95;import 'package:flutter/src/rendering/viewport_offset.dart' as _i96;import 'package:flutter/src/rendering/viewport.dart' as _i97;import 'package:flutter/src/widgets/banner.dart' as _i98;import 'package:flutter/src/widgets/router.dart' as _i99;import 'dart:async' as _i100;import 'package:flutter/src/widgets/value_listenable_builder.dart' as _i101;import 'package:flutter/src/cupertino/interface_level.dart' as _i102;import 'package:flutter/src/cupertino/theme.dart' as _i103;import 'package:flutter/src/widgets/text_selection_toolbar_anchors.dart' as _i104;import 'package:flutter/src/cupertino/text_selection_toolbar.dart' as _i105;import 'package:flutter/src/widgets/bottom_navigation_bar_item.dart' as _i106;import 'package:flutter/src/widgets/icon_data.dart' as _i107;import 'package:flutter/src/cupertino/date_picker.dart' as _i108;import 'package:flutter/src/cupertino/localizations.dart' as _i109;import 'package:flutter/src/widgets/list_wheel_scroll_view.dart' as _i110;import 'package:flutter/src/painting/box_decoration.dart' as _i111;import 'package:flutter/src/painting/box_shadow.dart' as _i112;import 'package:flutter/src/cupertino/page_scaffold.dart' as _i113;import 'package:flutter/src/cupertino/refresh.dart' as _i114;import 'package:flutter/src/widgets/icon.dart' as _i115;import 'package:flutter/src/cupertino/text_field.dart' as _i116;import 'package:flutter/src/widgets/context_menu_button_item.dart' as _i117;import 'package:flutter/src/cupertino/bottom_tab_bar.dart' as _i118;import 'package:flutter/src/cupertino/tab_scaffold.dart' as _i119;import 'package:flutter/src/widgets/form.dart' as _i120;import 'package:flutter/src/widgets/animated_cross_fade.dart' as _i121;import 'package:flutter/src/widgets/animated_scroll_view.dart' as _i122;import 'package:flutter/src/widgets/scroll_view.dart' as _i123;import 'package:flutter/src/widgets/animated_switcher.dart' as _i124;import 'package:flutter/src/widgets/async.dart' as _i125;import 'package:flutter/src/widgets/autocomplete.dart' as _i126;import 'package:flutter/src/widgets/dismissible.dart' as _i127;import 'package:flutter/src/widgets/drag_target.dart' as _i128;import 'package:flutter/src/widgets/draggable_scrollable_sheet.dart' as _i129;import 'package:flutter/src/widgets/dual_transition_builder.dart' as _i130;import 'package:flutter/src/widgets/pop_scope.dart' as _i131;import 'package:flutter/src/widgets/routes.dart' as _i132;import 'package:flutter/src/widgets/icon_theme_data.dart' as _i133;import 'package:flutter/src/widgets/interactive_viewer.dart' as _i134;import 'package:flutter/src/services/hardware_keyboard.dart' as _i135;import 'package:flutter/src/widgets/nested_scroll_view.dart' as _i136;import 'package:flutter/src/widgets/orientation_builder.dart' as _i137;import 'package:flutter/src/widgets/overflow_bar.dart' as _i138;import 'package:flutter/src/widgets/page_view.dart' as _i139;import 'package:flutter/src/services/platform_views.dart' as _i140;import 'package:flutter/src/rendering/platform_view.dart' as _i141;import 'package:flutter/src/services/message_codec.dart' as _i142;import 'package:flutter/src/widgets/platform_view.dart' as _i143;import 'package:flutter/src/services/raw_keyboard.dart' as _i144;import 'package:flutter/src/widgets/reorderable_list.dart' as _i145;import 'package:flutter/src/widgets/sliver_persistent_header.dart' as _i146;import 'package:flutter/src/widgets/sliver_tree.dart' as _i147;import 'package:flutter/src/animation/animation_style.dart' as _i148;import 'package:flutter/src/rendering/sliver_tree.dart' as _i149;import 'package:flutter/src/widgets/snapshot_widget.dart' as _i150;import 'package:flutter/src/animation/tween.dart' as _i151;import 'package:flutter/src/widgets/preferred_size.dart' as _i152;import 'package:flutter/src/services/system_chrome.dart' as _i153;import 'package:flutter/src/material/button_style.dart' as _i154;import 'package:flutter/src/material/action_icons_theme.dart' as _i155;import 'package:flutter/src/material/theme_data.dart' as _i156;import 'package:flutter/src/material/badge_theme.dart' as _i157;import 'package:flutter/src/material/banner_theme.dart' as _i158;import 'package:flutter/src/material/bottom_navigation_bar_theme.dart' as _i159;import 'package:flutter/src/material/bottom_navigation_bar.dart' as _i160;import 'package:flutter/src/material/material.dart' as _i161;import 'package:flutter/src/material/floating_action_button_location.dart' as _i162;import 'package:flutter/src/material/drawer.dart' as _i163;import 'package:flutter/src/material/divider_theme.dart' as _i164;import 'package:flutter/src/animation/animation_controller.dart' as _i165;import 'package:flutter/src/material/bottom_sheet.dart' as _i166;import 'package:flutter/src/material/drawer_theme.dart' as _i167;import 'package:flutter/src/material/list_tile.dart' as _i168;import 'package:flutter/src/widgets/widget_state.dart' as _i169;import 'package:flutter/src/material/ink_well.dart' as _i170;import 'package:flutter/src/material/button_style_button.dart' as _i171;import 'package:flutter/src/material/elevated_button_theme.dart' as _i172;import 'package:flutter/src/material/filled_button_theme.dart' as _i173;import 'package:flutter/src/material/outlined_button_theme.dart' as _i174;import 'package:flutter/src/material/text_button_theme.dart' as _i175;import 'package:flutter/src/material/icon_button_theme.dart' as _i176;import 'package:flutter/src/material/tooltip_theme.dart' as _i177;import 'package:flutter/src/material/tooltip.dart' as _i178;import 'package:flutter/src/material/list_tile_theme.dart' as _i179;import 'package:flutter/src/material/flexible_space_bar.dart' as _i180;import 'package:flutter/src/material/button_theme.dart' as _i181;import 'package:flutter/src/material/color_scheme.dart' as _i182;import 'package:flutter/src/material/snack_bar_theme.dart' as _i183;import 'package:flutter/src/material/snack_bar.dart' as _i184;import 'package:flutter/src/material/button_bar_theme.dart' as _i185;import 'package:flutter/src/material/checkbox_theme.dart' as _i186;import 'package:flutter/src/material/chip_theme.dart' as _i187;import 'package:flutter/src/material/data_table_theme.dart' as _i188;import 'package:flutter/src/material/date_picker_theme.dart' as _i189;import 'package:flutter/src/material/input_decorator.dart' as _i190;import 'package:flutter/src/material/dropdown_menu_theme.dart' as _i191;import 'package:flutter/src/material/menu_anchor.dart' as _i192;import 'package:flutter/src/material/menu_style.dart' as _i193;import 'package:flutter/src/material/menu_bar_theme.dart' as _i194;import 'package:flutter/src/material/menu_theme.dart' as _i195;import 'package:flutter/src/material/menu_button_theme.dart' as _i196;import 'package:flutter/src/material/radio_theme.dart' as _i197;import 'package:flutter/src/material/scrollbar_theme.dart' as _i198;import 'package:flutter/src/material/expansion_tile_theme.dart' as _i199;import 'package:flutter/src/material/navigation_bar_theme.dart' as _i200;import 'package:flutter/src/material/navigation_bar.dart' as _i201;import 'package:flutter/src/material/navigation_drawer_theme.dart' as _i202;import 'package:flutter/src/material/navigation_rail_theme.dart' as _i203;import 'package:flutter/src/material/navigation_rail.dart' as _i204;import 'package:flutter/src/material/popup_menu_theme.dart' as _i205;import 'package:flutter/src/material/progress_indicator_theme.dart' as _i206;import 'package:flutter/src/material/search_bar_theme.dart' as _i207;import 'package:flutter/src/material/search_view_theme.dart' as _i208;import 'package:flutter/src/material/segmented_button_theme.dart' as _i209;import 'package:flutter/src/material/slider_theme.dart' as _i210;import 'package:flutter/src/material/slider.dart' as _i211;import 'package:flutter/src/material/switch_theme.dart' as _i212;import 'package:flutter/src/material/tab_controller.dart' as _i213;import 'package:flutter/src/material/tabs.dart' as _i214;import 'package:flutter/src/material/text_selection_theme.dart' as _i215;import 'package:flutter/src/material/time_picker_theme.dart' as _i216;import 'package:flutter/src/material/toggle_buttons_theme.dart' as _i217;import 'package:flutter/src/material/chip.dart' as _i218;import 'package:flutter/src/material/animated_icons.dart' as _i219;import 'package:flutter/src/material/scaffold.dart' as _i220;import 'package:flutter/src/material/app.dart' as _i221;import 'package:flutter/src/material/text_field.dart' as _i222;import 'package:flutter/src/painting/notched_shapes.dart' as _i223;import 'package:flutter/src/material/date.dart' as _i224;import 'package:flutter/src/material/carousel.dart' as _i225;import 'package:flutter/src/painting/image_stream.dart' as _i226;import 'package:flutter/src/material/data_table.dart' as _i227;import 'package:flutter/src/material/dropdown.dart' as _i228;import 'package:flutter/src/material/dropdown_menu.dart' as _i229;import 'package:flutter/src/material/expansion_panel.dart' as _i230;import 'package:flutter/src/material/mergeable_material.dart' as _i231;import 'package:flutter/src/material/expansion_tile.dart' as _i232;import 'package:flutter/src/painting/flutter_logo.dart' as _i233;import 'package:flutter/src/material/data_table_source.dart' as _i234;import 'package:flutter/src/material/popup_menu.dart' as _i235;import 'package:flutter/src/material/refresh_indicator.dart' as _i236;import 'package:flutter/src/material/search_anchor.dart' as _i237;import 'package:flutter/src/material/segmented_button.dart' as _i238;import 'package:flutter/src/material/stepper.dart' as _i239;import 'package:flutter/src/material/time.dart' as _i240;import 'package:flutter/src/material/time_picker.dart' as _i241;class $AboutListTile extends _i1.StatelessWidget {$AboutListTile({this.key, this.icon, this.child, this.applicationName, this.applicationVersion, this.applicationIcon, this.applicationLegalese, this.aboutBoxChildren, this.dense, });

final _i2.Key key;

final _i3.Widget icon;

final _i3.Widget child;

final String applicationName;

final String applicationVersion;

final _i3.Widget applicationIcon;

final String applicationLegalese;

final List<_i3.Widget> aboutBoxChildren;

final bool dense;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AboutListTile
(); } 
 }
class $AboutDialog extends _i1.StatelessWidget {$AboutDialog({this.key, this.applicationName, this.applicationVersion, this.applicationIcon, this.applicationLegalese, this.children, });

final _i2.Key key;

final String applicationName;

final String applicationVersion;

final _i3.Widget applicationIcon;

final String applicationLegalese;

final List<_i3.Widget> children;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AboutDialog
(); } 
 }
class $LicensePage extends _i1.StatelessWidget {$LicensePage({this.key, this.applicationName, this.applicationVersion, this.applicationIcon, this.applicationLegalese, });

final _i2.Key key;

final String applicationName;

final String applicationVersion;

final _i3.Widget applicationIcon;

final String applicationLegalese;

_i1.Widget build(_i1.BuildContext context) { return
_i4.LicensePage
(); } 
 }
class $CupertinoActivityIndicator extends _i1.StatelessWidget {$CupertinoActivityIndicator({this.key, this.color, this.animating, this.radius, });

final _i2.Key key;

final _i5.Color color;

final bool animating;

final double radius;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoActivityIndicator
(); } 
 }
class $Directionality extends _i1.StatelessWidget {$Directionality(this.textDirection, this.child, {this.key, });

final _i2.Key key;

final _i5.TextDirection textDirection;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Directionality
(); } 
 }
class $Opacity extends _i1.StatelessWidget {$Opacity(this.opacity, {this.key, this.alwaysIncludeSemantics, this.child, });

final _i2.Key key;

final double opacity;

final bool alwaysIncludeSemantics;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Opacity
(); } 
 }
class $ShaderMask extends _i1.StatelessWidget {$ShaderMask(this.shaderCallback, {this.key, this.blendMode, this.child, });

final _i2.Key key;

final _i6.ShaderCallback shaderCallback;

final _i5.BlendMode blendMode;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ShaderMask
(); } 
 }
class $BackdropFilter extends _i1.StatelessWidget {$BackdropFilter(this.filter, {this.key, this.child, this.blendMode, });

final _i2.Key key;

final _i5.ImageFilter filter;

final _i3.Widget child;

final _i5.BlendMode blendMode;

_i1.Widget build(_i1.BuildContext context) { return
_i4.BackdropFilter
(); } 
 }
class $CustomPaint extends _i1.StatelessWidget {$CustomPaint({this.key, this.painter, this.foregroundPainter, this.size, this.isComplex, this.willChange, this.child, });

final _i2.Key key;

final _i7.CustomPainter painter;

final _i7.CustomPainter foregroundPainter;

final _i5.Size size;

final bool isComplex;

final bool willChange;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CustomPaint
(); } 
 }
class $ClipRect extends _i1.StatelessWidget {$ClipRect({this.key, this.clipper, this.clipBehavior, this.child, });

final _i2.Key key;

final _i6.CustomClipper<_i5.Rect> clipper;

final _i5.Clip clipBehavior;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ClipRect
(); } 
 }
class $ClipRRect extends _i1.StatelessWidget {$ClipRRect({this.key, this.borderRadius, this.clipper, this.clipBehavior, this.child, });

final _i2.Key key;

final _i8.BorderRadiusGeometry borderRadius;

final _i6.CustomClipper<_i5.RRect> clipper;

final _i5.Clip clipBehavior;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ClipRRect
(); } 
 }
class $ClipOval extends _i1.StatelessWidget {$ClipOval({this.key, this.clipper, this.clipBehavior, this.child, });

final _i2.Key key;

final _i6.CustomClipper<_i5.Rect> clipper;

final _i5.Clip clipBehavior;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ClipOval
(); } 
 }
class $ClipPath extends _i1.StatelessWidget {$ClipPath({this.key, this.clipper, this.clipBehavior, this.child, });

final _i2.Key key;

final _i6.CustomClipper<_i5.Path> clipper;

final _i5.Clip clipBehavior;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ClipPath
(); } 
 }
class $PhysicalModel extends _i1.StatelessWidget {$PhysicalModel(this.color, {this.key, this.shape, this.clipBehavior, this.borderRadius, this.elevation, this.shadowColor, this.child, });

final _i2.Key key;

final _i9.BoxShape shape;

final _i5.Clip clipBehavior;

final _i8.BorderRadius borderRadius;

final double elevation;

final _i5.Color color;

final _i5.Color shadowColor;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.PhysicalModel
(); } 
 }
class $PhysicalShape extends _i1.StatelessWidget {$PhysicalShape(this.clipper, this.color, {this.key, this.clipBehavior, this.elevation, this.shadowColor, this.child, });

final _i2.Key key;

final _i6.CustomClipper<_i5.Path> clipper;

final _i5.Clip clipBehavior;

final double elevation;

final _i5.Color color;

final _i5.Color shadowColor;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.PhysicalShape
(); } 
 }
class $Transform extends _i1.StatelessWidget {$Transform(this.transform, {this.key, this.origin, this.alignment, this.transformHitTests, this.filterQuality, this.child, });

final _i2.Key key;

final _i10.Matrix4 transform;

final _i5.Offset origin;

final _i11.AlignmentGeometry alignment;

final bool transformHitTests;

final _i5.FilterQuality filterQuality;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Transform
(); } 
 }
class $CompositedTransformTarget extends _i1.StatelessWidget {$CompositedTransformTarget(this.link, {this.key, this.child, });

final _i2.Key key;

final _i12.LayerLink link;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CompositedTransformTarget
(); } 
 }
class $CompositedTransformFollower extends _i1.StatelessWidget {$CompositedTransformFollower(this.link, {this.key, this.showWhenUnlinked, this.offset, this.targetAnchor, this.followerAnchor, this.child, });

final _i2.Key key;

final _i12.LayerLink link;

final bool showWhenUnlinked;

final _i5.Offset offset;

final _i11.Alignment targetAnchor;

final _i11.Alignment followerAnchor;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CompositedTransformFollower
(); } 
 }
class $FittedBox extends _i1.StatelessWidget {$FittedBox({this.key, this.fit, this.alignment, this.clipBehavior, this.child, });

final _i2.Key key;

final _i13.BoxFit fit;

final _i11.AlignmentGeometry alignment;

final _i5.Clip clipBehavior;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.FittedBox
(); } 
 }
class $FractionalTranslation extends _i1.StatelessWidget {$FractionalTranslation(this.translation, {this.key, this.transformHitTests, this.child, });

final _i2.Key key;

final _i5.Offset translation;

final bool transformHitTests;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.FractionalTranslation
(); } 
 }
class $RotatedBox extends _i1.StatelessWidget {$RotatedBox(this.quarterTurns, {this.key, this.child, });

final _i2.Key key;

final int quarterTurns;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.RotatedBox
(); } 
 }
class $Padding extends _i1.StatelessWidget {$Padding(this.padding, {this.key, this.child, });

final _i2.Key key;

final _i14.EdgeInsetsGeometry padding;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Padding
(); } 
 }
class $Align extends _i1.StatelessWidget {$Align({this.key, this.alignment, this.widthFactor, this.heightFactor, this.child, });

final _i2.Key key;

final _i11.AlignmentGeometry alignment;

final double widthFactor;

final double heightFactor;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Align
(); } 
 }
class $Center extends _i1.StatelessWidget {$Center({this.key, this.widthFactor, this.heightFactor, this.child, });

final _i2.Key key;

final double widthFactor;

final double heightFactor;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Center
(); } 
 }
class $CustomSingleChildLayout extends _i1.StatelessWidget {$CustomSingleChildLayout(this.delegate, {this.key, this.child, });

final _i2.Key key;

final _i15.SingleChildLayoutDelegate delegate;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CustomSingleChildLayout
(); } 
 }
class $LayoutId extends _i1.StatelessWidget {$LayoutId(this.id, this.child, {this.key, });

final _i2.Key key;

final Object id;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.LayoutId
(); } 
 }
class $CustomMultiChildLayout extends _i1.StatelessWidget {$CustomMultiChildLayout(this.delegate, {this.key, this.children, });

final _i2.Key key;

final _i16.MultiChildLayoutDelegate delegate;

final List<_i3.Widget> children;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CustomMultiChildLayout
(); } 
 }
class $SizedBox extends _i1.StatelessWidget {$SizedBox({this.key, this.width, this.height, this.child, });

final _i2.Key key;

final double width;

final double height;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SizedBox
(); } 
 }
class $ConstrainedBox extends _i1.StatelessWidget {$ConstrainedBox(this.constraints, {this.key, this.child, });

final _i2.Key key;

final _i17.BoxConstraints constraints;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ConstrainedBox
(); } 
 }
class $ConstraintsTransformBox extends _i1.StatelessWidget {$ConstraintsTransformBox(this.constraintsTransform, {this.key, this.child, this.textDirection, this.alignment, this.clipBehavior, this.debugTransformType, });

final _i2.Key key;

final _i3.Widget child;

final _i5.TextDirection textDirection;

final _i11.AlignmentGeometry alignment;

final _i15.BoxConstraintsTransform constraintsTransform;

final _i5.Clip clipBehavior;

final String debugTransformType;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ConstraintsTransformBox
(); } 
 }
class $UnconstrainedBox extends _i1.StatelessWidget {$UnconstrainedBox({this.key, this.child, this.textDirection, this.alignment, this.constrainedAxis, this.clipBehavior, });

final _i2.Key key;

final _i3.Widget child;

final _i5.TextDirection textDirection;

final _i11.AlignmentGeometry alignment;

final _i18.Axis constrainedAxis;

final _i5.Clip clipBehavior;

_i1.Widget build(_i1.BuildContext context) { return
_i4.UnconstrainedBox
(); } 
 }
class $FractionallySizedBox extends _i1.StatelessWidget {$FractionallySizedBox({this.key, this.alignment, this.widthFactor, this.heightFactor, this.child, });

final _i2.Key key;

final _i11.AlignmentGeometry alignment;

final double widthFactor;

final double heightFactor;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.FractionallySizedBox
(); } 
 }
class $LimitedBox extends _i1.StatelessWidget {$LimitedBox({this.key, this.maxWidth, this.maxHeight, this.child, });

final _i2.Key key;

final double maxWidth;

final double maxHeight;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.LimitedBox
(); } 
 }
class $OverflowBox extends _i1.StatelessWidget {$OverflowBox({this.key, this.alignment, this.minWidth, this.maxWidth, this.minHeight, this.maxHeight, this.fit, this.child, });

final _i2.Key key;

final _i11.AlignmentGeometry alignment;

final double minWidth;

final double maxWidth;

final double minHeight;

final double maxHeight;

final _i15.OverflowBoxFit fit;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.OverflowBox
(); } 
 }
class $SizedOverflowBox extends _i1.StatelessWidget {$SizedOverflowBox(this.size, {this.key, this.alignment, this.child, });

final _i2.Key key;

final _i5.Size size;

final _i11.AlignmentGeometry alignment;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SizedOverflowBox
(); } 
 }
class $Offstage extends _i1.StatelessWidget {$Offstage({this.key, this.offstage, this.child, });

final _i2.Key key;

final bool offstage;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Offstage
(); } 
 }
class $AspectRatio extends _i1.StatelessWidget {$AspectRatio(this.aspectRatio, {this.key, this.child, });

final _i2.Key key;

final double aspectRatio;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AspectRatio
(); } 
 }
class $IntrinsicWidth extends _i1.StatelessWidget {$IntrinsicWidth({this.key, this.stepWidth, this.stepHeight, this.child, });

final _i2.Key key;

final double stepWidth;

final double stepHeight;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.IntrinsicWidth
(); } 
 }
class $IntrinsicHeight extends _i1.StatelessWidget {$IntrinsicHeight({this.key, this.child, });

final _i2.Key key;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.IntrinsicHeight
(); } 
 }
class $Baseline extends _i1.StatelessWidget {$Baseline(this.baseline, this.baselineType, {this.key, this.child, });

final _i2.Key key;

final double baseline;

final _i5.TextBaseline baselineType;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Baseline
(); } 
 }
class $IgnoreBaseline extends _i1.StatelessWidget {$IgnoreBaseline({this.key, this.child, });

final _i2.Key key;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.IgnoreBaseline
(); } 
 }
class $SliverToBoxAdapter extends _i1.StatelessWidget {$SliverToBoxAdapter({this.key, this.child, });

final _i2.Key key;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SliverToBoxAdapter
(); } 
 }
class $SliverPadding extends _i1.StatelessWidget {$SliverPadding(this.padding, {this.key, this.sliver, });

final _i2.Key key;

final _i14.EdgeInsetsGeometry padding;

final _i3.Widget sliver;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SliverPadding
(); } 
 }
class $ListBody extends _i1.StatelessWidget {$ListBody({this.key, this.mainAxis, this.reverse, this.children, });

final _i2.Key key;

final _i18.Axis mainAxis;

final bool reverse;

final List<_i3.Widget> children;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ListBody
(); } 
 }
class $Stack extends _i1.StatelessWidget {$Stack({this.key, this.alignment, this.textDirection, this.fit, this.clipBehavior, this.children, });

final _i2.Key key;

final _i11.AlignmentGeometry alignment;

final _i5.TextDirection textDirection;

final _i19.StackFit fit;

final _i5.Clip clipBehavior;

final List<_i3.Widget> children;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Stack
(); } 
 }
class $IndexedStack extends _i1.StatelessWidget {$IndexedStack({this.key, this.alignment, this.textDirection, this.clipBehavior, this.sizing, this.index, this.children, });

final _i2.Key key;

final _i11.AlignmentGeometry alignment;

final _i5.TextDirection textDirection;

final _i5.Clip clipBehavior;

final _i19.StackFit sizing;

final int index;

final List<_i3.Widget> children;

_i1.Widget build(_i1.BuildContext context) { return
_i4.IndexedStack
(); } 
 }
class $Positioned extends _i1.StatelessWidget {$Positioned(this.child, {this.key, this.left, this.top, this.right, this.bottom, this.width, this.height, });

final _i2.Key key;

final double left;

final double top;

final double right;

final double bottom;

final double width;

final double height;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Positioned
(); } 
 }
class $PositionedDirectional extends _i1.StatelessWidget {$PositionedDirectional(this.child, {this.key, this.start, this.top, this.end, this.bottom, this.width, this.height, });

final _i2.Key key;

final double start;

final double top;

final double end;

final double bottom;

final double width;

final double height;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.PositionedDirectional
(); } 
 }
class $Flex extends _i1.StatelessWidget {$Flex(this.direction, {this.key, this.mainAxisAlignment, this.mainAxisSize, this.crossAxisAlignment, this.textDirection, this.verticalDirection, this.textBaseline, this.clipBehavior, this.children, });

final _i2.Key key;

final _i18.Axis direction;

final _i20.MainAxisAlignment mainAxisAlignment;

final _i20.MainAxisSize mainAxisSize;

final _i20.CrossAxisAlignment crossAxisAlignment;

final _i5.TextDirection textDirection;

final _i18.VerticalDirection verticalDirection;

final _i5.TextBaseline textBaseline;

final _i5.Clip clipBehavior;

final List<_i3.Widget> children;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Flex
(); } 
 }
class $Row extends _i1.StatelessWidget {$Row({this.key, this.mainAxisAlignment, this.mainAxisSize, this.crossAxisAlignment, this.textDirection, this.verticalDirection, this.textBaseline, this.children, });

final _i2.Key key;

final _i20.MainAxisAlignment mainAxisAlignment;

final _i20.MainAxisSize mainAxisSize;

final _i20.CrossAxisAlignment crossAxisAlignment;

final _i5.TextDirection textDirection;

final _i18.VerticalDirection verticalDirection;

final _i5.TextBaseline textBaseline;

final List<_i3.Widget> children;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Row
(); } 
 }
class $Column extends _i1.StatelessWidget {$Column({this.key, this.mainAxisAlignment, this.mainAxisSize, this.crossAxisAlignment, this.textDirection, this.verticalDirection, this.textBaseline, this.children, });

final _i2.Key key;

final _i20.MainAxisAlignment mainAxisAlignment;

final _i20.MainAxisSize mainAxisSize;

final _i20.CrossAxisAlignment crossAxisAlignment;

final _i5.TextDirection textDirection;

final _i18.VerticalDirection verticalDirection;

final _i5.TextBaseline textBaseline;

final List<_i3.Widget> children;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Column
(); } 
 }
class $Flexible extends _i1.StatelessWidget {$Flexible(this.child, {this.key, this.flex, this.fit, });

final _i2.Key key;

final int flex;

final _i20.FlexFit fit;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Flexible
(); } 
 }
class $Expanded extends _i1.StatelessWidget {$Expanded(this.child, {this.key, this.flex, });

final _i2.Key key;

final int flex;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Expanded
(); } 
 }
class $Wrap extends _i1.StatelessWidget {$Wrap({this.key, this.direction, this.alignment, this.spacing, this.runAlignment, this.runSpacing, this.crossAxisAlignment, this.textDirection, this.verticalDirection, this.clipBehavior, this.children, });

final _i2.Key key;

final _i18.Axis direction;

final _i21.WrapAlignment alignment;

final double spacing;

final _i21.WrapAlignment runAlignment;

final double runSpacing;

final _i21.WrapCrossAlignment crossAxisAlignment;

final _i5.TextDirection textDirection;

final _i18.VerticalDirection verticalDirection;

final _i5.Clip clipBehavior;

final List<_i3.Widget> children;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Wrap
(); } 
 }
class $Flow extends _i1.StatelessWidget {$Flow(this.delegate, {this.key, this.children, this.clipBehavior, });

final _i2.Key key;

final _i22.FlowDelegate delegate;

final List<_i3.Widget> children;

final _i5.Clip clipBehavior;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Flow
(); } 
 }
class $RichText extends _i1.StatelessWidget {$RichText(this.text, {this.key, this.textAlign, this.textDirection, this.softWrap, this.overflow, this.textScaleFactor, this.textScaler, this.maxLines, this.locale, this.strutStyle, this.textWidthBasis, this.textHeightBehavior, this.selectionRegistrar, this.selectionColor, });

final _i2.Key key;

final _i23.InlineSpan text;

final _i5.TextAlign textAlign;

final _i5.TextDirection textDirection;

final bool softWrap;

final _i24.TextOverflow overflow;

final double textScaleFactor;

final _i25.TextScaler textScaler;

final int maxLines;

final _i5.Locale locale;

final _i26.StrutStyle strutStyle;

final _i24.TextWidthBasis textWidthBasis;

final _i5.TextHeightBehavior textHeightBehavior;

final _i27.SelectionRegistrar selectionRegistrar;

final _i5.Color selectionColor;

_i1.Widget build(_i1.BuildContext context) { return
_i4.RichText
(); } 
 }
class $RawImage extends _i1.StatelessWidget {$RawImage({this.key, this.image, this.debugImageLabel, this.width, this.height, this.scale, this.color, this.opacity, this.colorBlendMode, this.fit, this.alignment, this.repeat, this.centerSlice, this.matchTextDirection, this.invertColors, this.filterQuality, this.isAntiAlias, });

final _i2.Key key;

final _i5.Image image;

final String debugImageLabel;

final double width;

final double height;

final double scale;

final _i5.Color color;

final _i28.Animation<double> opacity;

final _i5.BlendMode colorBlendMode;

final _i13.BoxFit fit;

final _i11.AlignmentGeometry alignment;

final _i29.ImageRepeat repeat;

final _i5.Rect centerSlice;

final bool matchTextDirection;

final bool invertColors;

final _i5.FilterQuality filterQuality;

final bool isAntiAlias;

_i1.Widget build(_i1.BuildContext context) { return
_i4.RawImage
(); } 
 }
class $DefaultAssetBundle extends _i1.StatelessWidget {$DefaultAssetBundle(this.bundle, this.child, {this.key, });

final _i2.Key key;

final _i30.AssetBundle bundle;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DefaultAssetBundle
(); } 
 }
class $WidgetToRenderBoxAdapter extends _i1.StatelessWidget {$WidgetToRenderBoxAdapter(this.renderBox, {this.onBuild, this.onUnmount, });

final _i17.RenderBox renderBox;

final _i5.VoidCallback onBuild;

final _i5.VoidCallback onUnmount;

_i1.Widget build(_i1.BuildContext context) { return
_i4.WidgetToRenderBoxAdapter
(); } 
 }
class $Listener extends _i1.StatelessWidget {$Listener({this.key, this.onPointerDown, this.onPointerMove, this.onPointerUp, this.onPointerHover, this.onPointerCancel, this.onPointerPanZoomStart, this.onPointerPanZoomUpdate, this.onPointerPanZoomEnd, this.onPointerSignal, this.behavior, this.child, });

final _i2.Key key;

final _i6.PointerDownEventListener onPointerDown;

final _i6.PointerMoveEventListener onPointerMove;

final _i6.PointerUpEventListener onPointerUp;

final _i31.PointerHoverEventListener onPointerHover;

final _i6.PointerCancelEventListener onPointerCancel;

final _i6.PointerPanZoomStartEventListener onPointerPanZoomStart;

final _i6.PointerPanZoomUpdateEventListener onPointerPanZoomUpdate;

final _i6.PointerPanZoomEndEventListener onPointerPanZoomEnd;

final _i6.PointerSignalEventListener onPointerSignal;

final _i6.HitTestBehavior behavior;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Listener
(); } 
 }
class $MouseRegion extends _i1.StatelessWidget {$MouseRegion({this.key, this.onEnter, this.onExit, this.onHover, this.cursor, this.opaque, this.hitTestBehavior, this.child, });

final _i2.Key key;

final _i31.PointerEnterEventListener onEnter;

final _i31.PointerExitEventListener onExit;

final _i31.PointerHoverEventListener onHover;

final _i32.MouseCursor cursor;

final bool opaque;

final _i6.HitTestBehavior hitTestBehavior;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.MouseRegion
(); } 
 }
class $RepaintBoundary extends _i1.StatelessWidget {$RepaintBoundary({this.key, this.child, });

final _i2.Key key;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.RepaintBoundary
(); } 
 }
class $IgnorePointer extends _i1.StatelessWidget {$IgnorePointer({this.key, this.ignoring, this.ignoringSemantics, this.child, });

final _i2.Key key;

final bool ignoring;

final bool ignoringSemantics;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.IgnorePointer
(); } 
 }
class $AbsorbPointer extends _i1.StatelessWidget {$AbsorbPointer({this.key, this.absorbing, this.ignoringSemantics, this.child, });

final _i2.Key key;

final bool absorbing;

final bool ignoringSemantics;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AbsorbPointer
(); } 
 }
class $MetaData extends _i1.StatelessWidget {$MetaData({this.key, this.metaData, this.behavior, this.child, });

final _i2.Key key;

final dynamic metaData;

final _i6.HitTestBehavior behavior;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.MetaData
(); } 
 }
class $Semantics extends _i1.StatelessWidget {$Semantics({this.key, this.child, this.container, this.explicitChildNodes, this.excludeSemantics, this.blockUserActions, this.enabled, this.checked, this.mixed, this.selected, this.toggled, this.button, this.slider, this.keyboardKey, this.link, this.header, this.headingLevel, this.textField, this.readOnly, this.focusable, this.focused, this.inMutuallyExclusiveGroup, this.obscured, this.multiline, this.scopesRoute, this.namesRoute, this.hidden, this.image, this.liveRegion, this.expanded, this.maxValueLength, this.currentValueLength, this.identifier, this.label, this.attributedLabel, this.value, this.attributedValue, this.increasedValue, this.attributedIncreasedValue, this.decreasedValue, this.attributedDecreasedValue, this.hint, this.attributedHint, this.tooltip, this.onTapHint, this.onLongPressHint, this.textDirection, this.sortKey, this.tagForChildren, this.onTap, this.onLongPress, this.onScrollLeft, this.onScrollRight, this.onScrollUp, this.onScrollDown, this.onIncrease, this.onDecrease, this.onCopy, this.onCut, this.onPaste, this.onDismiss, this.onMoveCursorForwardByCharacter, this.onMoveCursorBackwardByCharacter, this.onSetSelection, this.onSetText, this.onDidGainAccessibilityFocus, this.onDidLoseAccessibilityFocus, this.onFocus, this.customSemanticsActions, });

final _i2.Key key;

final _i3.Widget child;

final bool container;

final bool explicitChildNodes;

final bool excludeSemantics;

final bool blockUserActions;

final bool enabled;

final bool checked;

final bool mixed;

final bool selected;

final bool toggled;

final bool button;

final bool slider;

final bool keyboardKey;

final bool link;

final bool header;

final int headingLevel;

final bool textField;

final bool readOnly;

final bool focusable;

final bool focused;

final bool inMutuallyExclusiveGroup;

final bool obscured;

final bool multiline;

final bool scopesRoute;

final bool namesRoute;

final bool hidden;

final bool image;

final bool liveRegion;

final bool expanded;

final int maxValueLength;

final int currentValueLength;

final String identifier;

final String label;

final _i33.AttributedString attributedLabel;

final String value;

final _i33.AttributedString attributedValue;

final String increasedValue;

final _i33.AttributedString attributedIncreasedValue;

final String decreasedValue;

final _i33.AttributedString attributedDecreasedValue;

final String hint;

final _i33.AttributedString attributedHint;

final String tooltip;

final String onTapHint;

final String onLongPressHint;

final _i5.TextDirection textDirection;

final _i33.SemanticsSortKey sortKey;

final _i33.SemanticsTag tagForChildren;

final _i5.VoidCallback onTap;

final _i5.VoidCallback onLongPress;

final _i5.VoidCallback onScrollLeft;

final _i5.VoidCallback onScrollRight;

final _i5.VoidCallback onScrollUp;

final _i5.VoidCallback onScrollDown;

final _i5.VoidCallback onIncrease;

final _i5.VoidCallback onDecrease;

final _i5.VoidCallback onCopy;

final _i5.VoidCallback onCut;

final _i5.VoidCallback onPaste;

final _i5.VoidCallback onDismiss;

final _i33.MoveCursorHandler onMoveCursorForwardByCharacter;

final _i33.MoveCursorHandler onMoveCursorBackwardByCharacter;

final _i33.SetSelectionHandler onSetSelection;

final _i33.SetTextHandler onSetText;

final _i5.VoidCallback onDidGainAccessibilityFocus;

final _i5.VoidCallback onDidLoseAccessibilityFocus;

final _i5.VoidCallback onFocus;

final Map<_i33.CustomSemanticsAction,_i5.VoidCallback> customSemanticsActions;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Semantics
(); } 
 }
class $MergeSemantics extends _i1.StatelessWidget {$MergeSemantics({this.key, this.child, });

final _i2.Key key;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.MergeSemantics
(); } 
 }
class $BlockSemantics extends _i1.StatelessWidget {$BlockSemantics({this.key, this.blocking, this.child, });

final _i2.Key key;

final bool blocking;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.BlockSemantics
(); } 
 }
class $ExcludeSemantics extends _i1.StatelessWidget {$ExcludeSemantics({this.key, this.excluding, this.child, });

final _i2.Key key;

final bool excluding;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ExcludeSemantics
(); } 
 }
class $IndexedSemantics extends _i1.StatelessWidget {$IndexedSemantics(this.index, {this.key, this.child, });

final _i2.Key key;

final int index;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.IndexedSemantics
(); } 
 }
class $KeyedSubtree extends _i1.StatelessWidget {$KeyedSubtree(this.child, {this.key, });

final _i2.Key key;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.KeyedSubtree
(); } 
 }
class $Builder extends _i1.StatelessWidget {$Builder(this.builder, {this.key, });

final _i2.Key key;

final _i3.WidgetBuilder builder;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Builder
(); } 
 }
class $StatefulBuilder extends _i1.StatelessWidget {$StatefulBuilder(this.builder, {this.key, });

final _i2.Key key;

final _i34.StatefulWidgetBuilder builder;

_i1.Widget build(_i1.BuildContext context) { return
_i4.StatefulBuilder
(); } 
 }
class $ColoredBox extends _i1.StatelessWidget {$ColoredBox(this.color, {this.child, this.key, });

final _i5.Color color;

final _i3.Widget child;

final _i2.Key key;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ColoredBox
(); } 
 }
class $RootWidget extends _i1.StatelessWidget {$RootWidget({this.key, this.child, this.debugShortDescription, });

final _i2.Key key;

final _i3.Widget child;

final String debugShortDescription;

_i1.Widget build(_i1.BuildContext context) { return
_i4.RootWidget
(); } 
 }
class $WidgetsApp extends _i1.StatelessWidget {$WidgetsApp(this.color, {this.key, this.navigatorKey, this.onGenerateRoute, this.onGenerateInitialRoutes, this.onUnknownRoute, this.onNavigationNotification, this.navigatorObservers, this.initialRoute, this.pageRouteBuilder, this.home, this.routes, this.builder, this.title, this.onGenerateTitle, this.textStyle, this.locale, this.localizationsDelegates, this.localeListResolutionCallback, this.localeResolutionCallback, this.supportedLocales, this.showPerformanceOverlay, this.showSemanticsDebugger, this.debugShowWidgetInspector, this.debugShowCheckedModeBanner, this.inspectorSelectButtonBuilder, this.shortcuts, this.actions, this.restorationScopeId, this.useInheritedMediaQuery, });

final _i2.Key key;

final _i3.GlobalKey<_i35.NavigatorState> navigatorKey;

final _i35.RouteFactory onGenerateRoute;

final _i36.InitialRouteListFactory onGenerateInitialRoutes;

final _i35.RouteFactory onUnknownRoute;

final _i37.NotificationListenerCallback<_i35.NavigationNotification> onNavigationNotification;

final List<_i35.NavigatorObserver> navigatorObservers;

final String initialRoute;

final _i36.PageRouteFactory pageRouteBuilder;

final _i3.Widget home;

final Map<String,_i3.WidgetBuilder> routes;

final _i3.TransitionBuilder builder;

final String title;

final _i36.GenerateAppTitle onGenerateTitle;

final _i38.TextStyle textStyle;

final _i5.Color color;

final _i5.Locale locale;

final Iterable<_i39.LocalizationsDelegate<dynamic>> localizationsDelegates;

final _i36.LocaleListResolutionCallback localeListResolutionCallback;

final _i36.LocaleResolutionCallback localeResolutionCallback;

final Iterable<_i5.Locale> supportedLocales;

final bool showPerformanceOverlay;

final bool showSemanticsDebugger;

final bool debugShowWidgetInspector;

final bool debugShowCheckedModeBanner;

final _i40.InspectorSelectButtonBuilder inspectorSelectButtonBuilder;

final Map<_i41.ShortcutActivator,_i42.Intent> shortcuts;

final Map<Type,_i42.Action<_i42.Intent>> actions;

final String restorationScopeId;

final bool useInheritedMediaQuery;

_i1.Widget build(_i1.BuildContext context) { return
_i4.WidgetsApp
(); } 
 }
class $ActionListener extends _i1.StatelessWidget {$ActionListener(this.listener, this.action, this.child, {this.key, });

final _i2.Key key;

final _i42.ActionListenerCallback listener;

final _i42.Action<_i42.Intent> action;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ActionListener
(); } 
 }
class $Actions extends _i1.StatelessWidget {$Actions(this.actions, this.child, {this.key, this.dispatcher, });

final _i2.Key key;

final _i42.ActionDispatcher dispatcher;

final Map<Type,_i42.Action<_i42.Intent>> actions;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Actions
(); } 
 }
class $FocusableActionDetector extends _i1.StatelessWidget {$FocusableActionDetector(this.child, {this.key, this.enabled, this.focusNode, this.autofocus, this.descendantsAreFocusable, this.descendantsAreTraversable, this.shortcuts, this.actions, this.onShowFocusHighlight, this.onShowHoverHighlight, this.onFocusChange, this.mouseCursor, this.includeFocusSemantics, });

final _i2.Key key;

final bool enabled;

final _i43.FocusNode focusNode;

final bool autofocus;

final bool descendantsAreFocusable;

final bool descendantsAreTraversable;

final Map<_i41.ShortcutActivator,_i42.Intent> shortcuts;

final Map<Type,_i42.Action<_i42.Intent>> actions;

final _i44.ValueChanged<bool> onShowFocusHighlight;

final _i44.ValueChanged<bool> onShowHoverHighlight;

final _i44.ValueChanged<bool> onFocusChange;

final _i32.MouseCursor mouseCursor;

final bool includeFocusSemantics;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.FocusableActionDetector
(); } 
 }
class $Focus extends _i1.StatelessWidget {$Focus(this.child, {this.key, this.focusNode, this.parentNode, this.autofocus, this.onFocusChange, this.onKeyEvent, this.onKey, this.canRequestFocus, this.skipTraversal, this.descendantsAreFocusable, this.descendantsAreTraversable, this.includeSemantics, this.debugLabel, });

final _i2.Key key;

final _i3.Widget child;

final _i43.FocusNode focusNode;

final _i43.FocusNode parentNode;

final bool autofocus;

final _i44.ValueChanged<bool> onFocusChange;

final _i43.FocusOnKeyEventCallback onKeyEvent;

final _i43.FocusOnKeyCallback onKey;

final bool canRequestFocus;

final bool skipTraversal;

final bool descendantsAreFocusable;

final bool descendantsAreTraversable;

final bool includeSemantics;

final String debugLabel;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Focus
(); } 
 }
class $FocusScope extends _i1.StatelessWidget {$FocusScope(this.child, {this.key, this.node, this.parentNode, this.autofocus, this.onFocusChange, this.canRequestFocus, this.skipTraversal, this.onKeyEvent, this.onKey, this.debugLabel, this.includeSemantics, this.descendantsAreFocusable, this.descendantsAreTraversable, });

final _i2.Key key;

final _i43.FocusScopeNode node;

final _i43.FocusNode parentNode;

final _i3.Widget child;

final bool autofocus;

final _i44.ValueChanged<bool> onFocusChange;

final bool canRequestFocus;

final bool skipTraversal;

final _i43.FocusOnKeyEventCallback onKeyEvent;

final _i43.FocusOnKeyCallback onKey;

final String debugLabel;

final bool includeSemantics;

final bool descendantsAreFocusable;

final bool descendantsAreTraversable;

_i1.Widget build(_i1.BuildContext context) { return
_i4.FocusScope
(); } 
 }
class $ExcludeFocus extends _i1.StatelessWidget {$ExcludeFocus(this.child, {this.key, this.excluding, });

final _i2.Key key;

final bool excluding;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ExcludeFocus
(); } 
 }
class $ErrorWidget extends _i1.StatelessWidget {$ErrorWidget(this.exception);

final Object exception;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ErrorWidget
(); } 
 }
class $Localizations extends _i1.StatelessWidget {$Localizations(this.locale, this.delegates, {this.key, this.child, });

final _i2.Key key;

final _i5.Locale locale;

final List<_i39.LocalizationsDelegate<dynamic>> delegates;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Localizations
(); } 
 }
class $LookupBoundary extends _i1.StatelessWidget {$LookupBoundary(this.child, {this.key, });

final _i2.Key key;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.LookupBoundary
(); } 
 }
class $MediaQuery extends _i1.StatelessWidget {$MediaQuery(this.data, this.child, {this.key, });

final _i2.Key key;

final _i45.MediaQueryData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.MediaQuery
(); } 
 }
class $Overlay extends _i1.StatelessWidget {$Overlay({this.key, this.initialEntries, this.clipBehavior, });

final _i2.Key key;

final List<_i46.OverlayEntry> initialEntries;

final _i5.Clip clipBehavior;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Overlay
(); } 
 }
class $OverlayPortal extends _i1.StatelessWidget {$OverlayPortal(this.controller, this.overlayChildBuilder, {this.key, this.child, });

final _i2.Key key;

final _i46.OverlayPortalController controller;

final _i3.WidgetBuilder overlayChildBuilder;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.OverlayPortal
(); } 
 }
class $TickerMode extends _i1.StatelessWidget {$TickerMode(this.enabled, this.child, {this.key, });

final _i2.Key key;

final bool enabled;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.TickerMode
(); } 
 }
class $Table extends _i1.StatelessWidget {$Table({this.key, this.children, this.columnWidths, this.defaultColumnWidth, this.textDirection, this.border, this.defaultVerticalAlignment, this.textBaseline, });

final _i2.Key key;

final List<_i47.TableRow> children;

final Map<int,_i48.TableColumnWidth> columnWidths;

final _i48.TableColumnWidth defaultColumnWidth;

final _i5.TextDirection textDirection;

final _i49.TableBorder border;

final _i48.TableCellVerticalAlignment defaultVerticalAlignment;

final _i5.TextBaseline textBaseline;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Table
(); } 
 }
class $TableCell extends _i1.StatelessWidget {$TableCell(this.child, {this.key, this.verticalAlignment, });

final _i2.Key key;

final _i48.TableCellVerticalAlignment verticalAlignment;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.TableCell
(); } 
 }
class $Image extends _i1.StatelessWidget {$Image(this.image, {this.key, this.frameBuilder, this.loadingBuilder, this.errorBuilder, this.semanticLabel, this.excludeFromSemantics, this.width, this.height, this.color, this.opacity, this.colorBlendMode, this.fit, this.alignment, this.repeat, this.centerSlice, this.matchTextDirection, this.gaplessPlayback, this.isAntiAlias, this.filterQuality, });

final _i2.Key key;

final _i50.ImageProvider<Object> image;

final _i51.ImageFrameBuilder frameBuilder;

final _i51.ImageLoadingBuilder loadingBuilder;

final _i51.ImageErrorWidgetBuilder errorBuilder;

final String semanticLabel;

final bool excludeFromSemantics;

final double width;

final double height;

final _i5.Color color;

final _i28.Animation<double> opacity;

final _i5.BlendMode colorBlendMode;

final _i13.BoxFit fit;

final _i11.AlignmentGeometry alignment;

final _i29.ImageRepeat repeat;

final _i5.Rect centerSlice;

final bool matchTextDirection;

final bool gaplessPlayback;

final bool isAntiAlias;

final _i5.FilterQuality filterQuality;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Image
(); } 
 }
class $Placeholder extends _i1.StatelessWidget {$Placeholder({this.key, this.color, this.strokeWidth, this.fallbackWidth, this.fallbackHeight, this.child, });

final _i2.Key key;

final _i5.Color color;

final double strokeWidth;

final double fallbackWidth;

final double fallbackHeight;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Placeholder
(); } 
 }
class $Scrollable extends _i1.StatelessWidget {$Scrollable(this.viewportBuilder, {this.key, this.axisDirection, this.controller, this.physics, this.incrementCalculator, this.excludeFromSemantics, this.semanticChildCount, this.dragStartBehavior, this.restorationId, this.scrollBehavior, this.clipBehavior, this.hitTestBehavior, });

final _i2.Key key;

final _i18.AxisDirection axisDirection;

final _i52.ScrollController controller;

final _i53.ScrollPhysics physics;

final _i54.ViewportBuilder viewportBuilder;

final _i55.ScrollIncrementCalculator incrementCalculator;

final bool excludeFromSemantics;

final int semanticChildCount;

final _i56.DragStartBehavior dragStartBehavior;

final String restorationId;

final _i57.ScrollBehavior scrollBehavior;

final _i5.Clip clipBehavior;

final _i6.HitTestBehavior hitTestBehavior;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Scrollable
(); } 
 }
class $TwoDimensionalScrollable extends _i1.StatelessWidget {$TwoDimensionalScrollable(this.horizontalDetails, this.verticalDetails, this.viewportBuilder, {this.key, this.incrementCalculator, this.restorationId, this.excludeFromSemantics, this.diagonalDragBehavior, this.dragStartBehavior, this.hitTestBehavior, });

final _i2.Key key;

final _i55.ScrollableDetails horizontalDetails;

final _i55.ScrollableDetails verticalDetails;

final _i54.TwoDimensionalViewportBuilder viewportBuilder;

final _i55.ScrollIncrementCalculator incrementCalculator;

final String restorationId;

final bool excludeFromSemantics;

final _i54.DiagonalDragBehavior diagonalDragBehavior;

final _i56.DragStartBehavior dragStartBehavior;

final _i6.HitTestBehavior hitTestBehavior;

_i1.Widget build(_i1.BuildContext context) { return
_i4.TwoDimensionalScrollable
(); } 
 }
class $GestureDetector extends _i1.StatelessWidget {$GestureDetector({this.key, this.child, this.onTapDown, this.onTapUp, this.onTap, this.onTapCancel, this.onSecondaryTap, this.onSecondaryTapDown, this.onSecondaryTapUp, this.onSecondaryTapCancel, this.onTertiaryTapDown, this.onTertiaryTapUp, this.onTertiaryTapCancel, this.onDoubleTapDown, this.onDoubleTap, this.onDoubleTapCancel, this.onLongPressDown, this.onLongPressCancel, this.onLongPress, this.onLongPressStart, this.onLongPressMoveUpdate, this.onLongPressUp, this.onLongPressEnd, this.onSecondaryLongPressDown, this.onSecondaryLongPressCancel, this.onSecondaryLongPress, this.onSecondaryLongPressStart, this.onSecondaryLongPressMoveUpdate, this.onSecondaryLongPressUp, this.onSecondaryLongPressEnd, this.onTertiaryLongPressDown, this.onTertiaryLongPressCancel, this.onTertiaryLongPress, this.onTertiaryLongPressStart, this.onTertiaryLongPressMoveUpdate, this.onTertiaryLongPressUp, this.onTertiaryLongPressEnd, this.onVerticalDragDown, this.onVerticalDragStart, this.onVerticalDragUpdate, this.onVerticalDragEnd, this.onVerticalDragCancel, this.onHorizontalDragDown, this.onHorizontalDragStart, this.onHorizontalDragUpdate, this.onHorizontalDragEnd, this.onHorizontalDragCancel, this.onForcePressStart, this.onForcePressPeak, this.onForcePressUpdate, this.onForcePressEnd, this.onPanDown, this.onPanStart, this.onPanUpdate, this.onPanEnd, this.onPanCancel, this.onScaleStart, this.onScaleUpdate, this.onScaleEnd, this.behavior, this.excludeFromSemantics, this.dragStartBehavior, this.trackpadScrollCausesScale, this.trackpadScrollToScaleFactor, this.supportedDevices, });

final _i2.Key key;

final _i3.Widget child;

final _i58.GestureTapDownCallback onTapDown;

final _i58.GestureTapUpCallback onTapUp;

final _i58.GestureTapCallback onTap;

final _i58.GestureTapCancelCallback onTapCancel;

final _i58.GestureTapCallback onSecondaryTap;

final _i58.GestureTapDownCallback onSecondaryTapDown;

final _i58.GestureTapUpCallback onSecondaryTapUp;

final _i58.GestureTapCancelCallback onSecondaryTapCancel;

final _i58.GestureTapDownCallback onTertiaryTapDown;

final _i58.GestureTapUpCallback onTertiaryTapUp;

final _i58.GestureTapCancelCallback onTertiaryTapCancel;

final _i58.GestureTapDownCallback onDoubleTapDown;

final _i58.GestureTapCallback onDoubleTap;

final _i58.GestureTapCancelCallback onDoubleTapCancel;

final _i59.GestureLongPressDownCallback onLongPressDown;

final _i59.GestureLongPressCancelCallback onLongPressCancel;

final _i59.GestureLongPressCallback onLongPress;

final _i59.GestureLongPressStartCallback onLongPressStart;

final _i59.GestureLongPressMoveUpdateCallback onLongPressMoveUpdate;

final _i59.GestureLongPressUpCallback onLongPressUp;

final _i59.GestureLongPressEndCallback onLongPressEnd;

final _i59.GestureLongPressDownCallback onSecondaryLongPressDown;

final _i59.GestureLongPressCancelCallback onSecondaryLongPressCancel;

final _i59.GestureLongPressCallback onSecondaryLongPress;

final _i59.GestureLongPressStartCallback onSecondaryLongPressStart;

final _i59.GestureLongPressMoveUpdateCallback onSecondaryLongPressMoveUpdate;

final _i59.GestureLongPressUpCallback onSecondaryLongPressUp;

final _i59.GestureLongPressEndCallback onSecondaryLongPressEnd;

final _i59.GestureLongPressDownCallback onTertiaryLongPressDown;

final _i59.GestureLongPressCancelCallback onTertiaryLongPressCancel;

final _i59.GestureLongPressCallback onTertiaryLongPress;

final _i59.GestureLongPressStartCallback onTertiaryLongPressStart;

final _i59.GestureLongPressMoveUpdateCallback onTertiaryLongPressMoveUpdate;

final _i59.GestureLongPressUpCallback onTertiaryLongPressUp;

final _i59.GestureLongPressEndCallback onTertiaryLongPressEnd;

final _i60.GestureDragDownCallback onVerticalDragDown;

final _i60.GestureDragStartCallback onVerticalDragStart;

final _i60.GestureDragUpdateCallback onVerticalDragUpdate;

final _i61.GestureDragEndCallback onVerticalDragEnd;

final _i61.GestureDragCancelCallback onVerticalDragCancel;

final _i60.GestureDragDownCallback onHorizontalDragDown;

final _i60.GestureDragStartCallback onHorizontalDragStart;

final _i60.GestureDragUpdateCallback onHorizontalDragUpdate;

final _i61.GestureDragEndCallback onHorizontalDragEnd;

final _i61.GestureDragCancelCallback onHorizontalDragCancel;

final _i62.GestureForcePressStartCallback onForcePressStart;

final _i62.GestureForcePressPeakCallback onForcePressPeak;

final _i62.GestureForcePressUpdateCallback onForcePressUpdate;

final _i62.GestureForcePressEndCallback onForcePressEnd;

final _i60.GestureDragDownCallback onPanDown;

final _i60.GestureDragStartCallback onPanStart;

final _i60.GestureDragUpdateCallback onPanUpdate;

final _i61.GestureDragEndCallback onPanEnd;

final _i61.GestureDragCancelCallback onPanCancel;

final _i63.GestureScaleStartCallback onScaleStart;

final _i63.GestureScaleUpdateCallback onScaleUpdate;

final _i63.GestureScaleEndCallback onScaleEnd;

final _i6.HitTestBehavior behavior;

final bool excludeFromSemantics;

final _i56.DragStartBehavior dragStartBehavior;

final bool trackpadScrollCausesScale;

final _i5.Offset trackpadScrollToScaleFactor;

final Set<_i5.PointerDeviceKind> supportedDevices;

_i1.Widget build(_i1.BuildContext context) { return
_i4.GestureDetector
(); } 
 }
class $RawGestureDetector extends _i1.StatelessWidget {$RawGestureDetector({this.key, this.child, this.gestures, this.behavior, this.excludeFromSemantics, this.semantics, });

final _i2.Key key;

final _i3.Widget child;

final Map<Type,_i64.GestureRecognizerFactory<_i56.GestureRecognizer>> gestures;

final _i6.HitTestBehavior behavior;

final bool excludeFromSemantics;

final _i64.SemanticsGestureDelegate semantics;

_i1.Widget build(_i1.BuildContext context) { return
_i4.RawGestureDetector
(); } 
 }
class $ScrollConfiguration extends _i1.StatelessWidget {$ScrollConfiguration(this.behavior, this.child, {this.key, });

final _i2.Key key;

final _i57.ScrollBehavior behavior;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ScrollConfiguration
(); } 
 }
class $GlowingOverscrollIndicator extends _i1.StatelessWidget {$GlowingOverscrollIndicator(this.axisDirection, this.color, {this.key, this.showLeading, this.showTrailing, this.notificationPredicate, this.child, });

final _i2.Key key;

final bool showLeading;

final bool showTrailing;

final _i18.AxisDirection axisDirection;

final _i5.Color color;

final _i65.ScrollNotificationPredicate notificationPredicate;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.GlowingOverscrollIndicator
(); } 
 }
class $StretchingOverscrollIndicator extends _i1.StatelessWidget {$StretchingOverscrollIndicator(this.axisDirection, {this.key, this.notificationPredicate, this.clipBehavior, this.child, });

final _i2.Key key;

final _i18.AxisDirection axisDirection;

final _i65.ScrollNotificationPredicate notificationPredicate;

final _i5.Clip clipBehavior;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.StretchingOverscrollIndicator
(); } 
 }
class $NotificationListener extends _i1.StatelessWidget {$NotificationListener(this.child, {this.key, this.onNotification, });

final _i2.Key key;

final _i3.Widget child;

final _i37.NotificationListenerCallback<T> onNotification;

_i1.Widget build(_i1.BuildContext context) { return
_i4.NotificationListener
(); } 
 }
class $SlideTransition extends _i1.StatelessWidget {$SlideTransition(this.position, {this.key, this.transformHitTests, this.textDirection, this.child, });

final _i2.Key key;

final _i28.Animation<_i5.Offset> position;

final bool transformHitTests;

final _i5.TextDirection textDirection;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SlideTransition
(); } 
 }
class $MatrixTransition extends _i1.StatelessWidget {$MatrixTransition(this.animation, this.onTransform, {this.key, this.alignment, this.filterQuality, this.child, });

final _i2.Key key;

final _i28.Animation<double> animation;

final _i66.TransformCallback onTransform;

final _i11.Alignment alignment;

final _i5.FilterQuality filterQuality;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.MatrixTransition
(); } 
 }
class $ScaleTransition extends _i1.StatelessWidget {$ScaleTransition(this.scale, {this.key, this.alignment, this.filterQuality, this.child, });

final _i2.Key key;

final _i28.Animation<double> scale;

final _i11.Alignment alignment;

final _i5.FilterQuality filterQuality;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ScaleTransition
(); } 
 }
class $RotationTransition extends _i1.StatelessWidget {$RotationTransition(this.turns, {this.key, this.alignment, this.filterQuality, this.child, });

final _i2.Key key;

final _i28.Animation<double> turns;

final _i11.Alignment alignment;

final _i5.FilterQuality filterQuality;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.RotationTransition
(); } 
 }
class $SizeTransition extends _i1.StatelessWidget {$SizeTransition(this.sizeFactor, {this.key, this.axis, this.axisAlignment, this.fixedCrossAxisSizeFactor, this.child, });

final _i2.Key key;

final _i18.Axis axis;

final _i28.Animation<double> sizeFactor;

final double axisAlignment;

final double fixedCrossAxisSizeFactor;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SizeTransition
(); } 
 }
class $FadeTransition extends _i1.StatelessWidget {$FadeTransition(this.opacity, {this.key, this.alwaysIncludeSemantics, this.child, });

final _i2.Key key;

final _i28.Animation<double> opacity;

final bool alwaysIncludeSemantics;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.FadeTransition
(); } 
 }
class $SliverFadeTransition extends _i1.StatelessWidget {$SliverFadeTransition(this.opacity, {this.key, this.alwaysIncludeSemantics, this.sliver, });

final _i2.Key key;

final _i28.Animation<double> opacity;

final bool alwaysIncludeSemantics;

final _i3.Widget sliver;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SliverFadeTransition
(); } 
 }
class $PositionedTransition extends _i1.StatelessWidget {$PositionedTransition(this.rect, this.child, {this.key, });

final _i2.Key key;

final _i28.Animation<_i19.RelativeRect> rect;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.PositionedTransition
(); } 
 }
class $RelativePositionedTransition extends _i1.StatelessWidget {$RelativePositionedTransition(this.rect, this.size, this.child, {this.key, });

final _i2.Key key;

final _i28.Animation<_i5.Rect> rect;

final _i5.Size size;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.RelativePositionedTransition
(); } 
 }
class $DecoratedBoxTransition extends _i1.StatelessWidget {$DecoratedBoxTransition(this.decoration, this.child, {this.key, this.position, });

final _i2.Key key;

final _i28.Animation<_i67.Decoration> decoration;

final _i6.DecorationPosition position;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DecoratedBoxTransition
(); } 
 }
class $AlignTransition extends _i1.StatelessWidget {$AlignTransition(this.alignment, this.child, {this.key, this.widthFactor, this.heightFactor, });

final _i2.Key key;

final _i28.Animation<_i11.AlignmentGeometry> alignment;

final _i3.Widget child;

final double widthFactor;

final double heightFactor;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AlignTransition
(); } 
 }
class $DefaultTextStyleTransition extends _i1.StatelessWidget {$DefaultTextStyleTransition(this.style, this.child, {this.key, this.textAlign, this.softWrap, this.overflow, this.maxLines, });

final _i2.Key key;

final _i28.Animation<_i38.TextStyle> style;

final _i3.Widget child;

final _i5.TextAlign textAlign;

final bool softWrap;

final _i24.TextOverflow overflow;

final int maxLines;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DefaultTextStyleTransition
(); } 
 }
class $ListenableBuilder extends _i1.StatelessWidget {$ListenableBuilder(this.listenable, this.builder, {this.key, this.child, });

final _i2.Key key;

final _i68.Listenable listenable;

final _i3.TransitionBuilder builder;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ListenableBuilder
(); } 
 }
class $AnimatedBuilder extends _i1.StatelessWidget {$AnimatedBuilder(this.animation, this.builder, {this.key, this.child, });

final _i2.Key key;

final _i68.Listenable animation;

final _i3.TransitionBuilder builder;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AnimatedBuilder
(); } 
 }
class $DecoratedBox extends _i1.StatelessWidget {$DecoratedBox(this.decoration, {this.key, this.position, this.child, });

final _i2.Key key;

final _i67.Decoration decoration;

final _i6.DecorationPosition position;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DecoratedBox
(); } 
 }
class $Container extends _i1.StatelessWidget {$Container({this.key, this.alignment, this.padding, this.color, this.decoration, this.foregroundDecoration, this.width, this.height, this.constraints, this.margin, this.transform, this.transformAlignment, this.child, this.clipBehavior, });

final _i2.Key key;

final _i11.AlignmentGeometry alignment;

final _i14.EdgeInsetsGeometry padding;

final _i5.Color color;

final _i67.Decoration decoration;

final _i67.Decoration foregroundDecoration;

final double width;

final double height;

final _i17.BoxConstraints constraints;

final _i14.EdgeInsetsGeometry margin;

final _i10.Matrix4 transform;

final _i11.AlignmentGeometry transformAlignment;

final _i3.Widget child;

final _i5.Clip clipBehavior;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Container
(); } 
 }
class $DefaultTextStyle extends _i1.StatelessWidget {$DefaultTextStyle(this.style, this.child, {this.key, this.textAlign, this.softWrap, this.overflow, this.maxLines, this.textWidthBasis, this.textHeightBehavior, });

final _i2.Key key;

final _i38.TextStyle style;

final _i5.TextAlign textAlign;

final bool softWrap;

final _i24.TextOverflow overflow;

final int maxLines;

final _i24.TextWidthBasis textWidthBasis;

final _i5.TextHeightBehavior textHeightBehavior;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DefaultTextStyle
(); } 
 }
class $DefaultTextHeightBehavior extends _i1.StatelessWidget {$DefaultTextHeightBehavior(this.textHeightBehavior, this.child, {this.key, });

final _i2.Key key;

final _i5.TextHeightBehavior textHeightBehavior;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DefaultTextHeightBehavior
(); } 
 }
class $Text extends _i1.StatelessWidget {$Text(this.data, {this.key, this.style, this.strutStyle, this.textAlign, this.textDirection, this.locale, this.softWrap, this.overflow, this.textScaleFactor, this.textScaler, this.maxLines, this.semanticsLabel, this.textWidthBasis, this.textHeightBehavior, this.selectionColor, });

final String data;

final _i2.Key key;

final _i38.TextStyle style;

final _i26.StrutStyle strutStyle;

final _i5.TextAlign textAlign;

final _i5.TextDirection textDirection;

final _i5.Locale locale;

final bool softWrap;

final _i24.TextOverflow overflow;

final double textScaleFactor;

final _i25.TextScaler textScaler;

final int maxLines;

final String semanticsLabel;

final _i24.TextWidthBasis textWidthBasis;

final _i5.TextHeightBehavior textHeightBehavior;

final _i5.Color selectionColor;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Text
(); } 
 }
class $DefaultSelectionStyle extends _i1.StatelessWidget {$DefaultSelectionStyle(this.child, {this.key, this.cursorColor, this.selectionColor, this.mouseCursor, });

final _i2.Key key;

final _i5.Color cursorColor;

final _i5.Color selectionColor;

final _i32.MouseCursor mouseCursor;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DefaultSelectionStyle
(); } 
 }
class $SelectableRegion extends _i1.StatelessWidget {$SelectableRegion(this.focusNode, this.selectionControls, this.child, {this.key, this.contextMenuBuilder, this.magnifierConfiguration, this.onSelectionChanged, });

final _i2.Key key;

final _i69.SelectableRegionContextMenuBuilder contextMenuBuilder;

final _i43.FocusNode focusNode;

final _i70.TextSelectionControls selectionControls;

final _i3.Widget child;

final _i71.TextMagnifierConfiguration magnifierConfiguration;

final _i44.ValueChanged<_i27.SelectedContent> onSelectionChanged;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SelectableRegion
(); } 
 }
class $RawMagnifier extends _i1.StatelessWidget {$RawMagnifier(this.size, {this.key, this.child, this.decoration, this.clipBehavior, this.focalPointOffset, this.magnificationScale, });

final _i2.Key key;

final _i3.Widget child;

final _i71.MagnifierDecoration decoration;

final _i5.Clip clipBehavior;

final _i5.Offset focalPointOffset;

final double magnificationScale;

final _i5.Size size;

_i1.Widget build(_i1.BuildContext context) { return
_i4.RawMagnifier
(); } 
 }
class $HeroControllerScope extends _i1.StatelessWidget {$HeroControllerScope(this.controller, this.child, {this.key, });

final _i2.Key key;

final _i72.HeroController controller;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.HeroControllerScope
(); } 
 }
class $Navigator extends _i1.StatelessWidget {$Navigator({this.key, this.pages, this.onPopPage, this.initialRoute, this.onGenerateInitialRoutes, this.onGenerateRoute, this.onUnknownRoute, this.transitionDelegate, this.reportsRouteUpdateToEngine, this.clipBehavior, this.observers, this.requestFocus, this.restorationScopeId, this.routeTraversalEdgeBehavior, this.onDidRemovePage, });

final _i2.Key key;

final List<_i35.Page<dynamic>> pages;

final _i35.PopPageCallback onPopPage;

final String initialRoute;

final _i35.RouteListFactory onGenerateInitialRoutes;

final _i35.RouteFactory onGenerateRoute;

final _i35.RouteFactory onUnknownRoute;

final _i35.TransitionDelegate<dynamic> transitionDelegate;

final bool reportsRouteUpdateToEngine;

final _i5.Clip clipBehavior;

final List<_i35.NavigatorObserver> observers;

final bool requestFocus;

final String restorationScopeId;

final _i73.TraversalEdgeBehavior routeTraversalEdgeBehavior;

final _i35.DidRemovePageCallback onDidRemovePage;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Navigator
(); } 
 }
class $FocusTraversalOrder extends _i1.StatelessWidget {$FocusTraversalOrder(this.order, this.child, {this.key, });

final _i2.Key key;

final _i73.FocusOrder order;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.FocusTraversalOrder
(); } 
 }
class $FocusTraversalGroup extends _i1.StatelessWidget {$FocusTraversalGroup(this.child, {this.key, this.policy, this.descendantsAreFocusable, this.descendantsAreTraversable, });

final _i2.Key key;

final _i73.FocusTraversalPolicy policy;

final bool descendantsAreFocusable;

final bool descendantsAreTraversable;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.FocusTraversalGroup
(); } 
 }
class $ExcludeFocusTraversal extends _i1.StatelessWidget {$ExcludeFocusTraversal(this.child, {this.key, this.excluding, });

final _i2.Key key;

final bool excluding;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ExcludeFocusTraversal
(); } 
 }
class $PageStorage extends _i1.StatelessWidget {$PageStorage(this.bucket, this.child, {this.key, });

final _i2.Key key;

final _i74.PageStorageBucket bucket;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.PageStorage
(); } 
 }
class $View extends _i1.StatelessWidget {$View(this.view, this.child, {this.key, this.deprecatedDoNotUseWillBeRemovedWithoutNoticePipelineOwner, this.deprecatedDoNotUseWillBeRemovedWithoutNoticeRenderView, });

final _i2.Key key;

final _i5.FlutterView view;

final _i75.PipelineOwner deprecatedDoNotUseWillBeRemovedWithoutNoticePipelineOwner;

final _i76.RenderView deprecatedDoNotUseWillBeRemovedWithoutNoticeRenderView;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.View
(); } 
 }
class $RawView extends _i1.StatelessWidget {$RawView(this.view, this.child, {this.key, this.deprecatedDoNotUseWillBeRemovedWithoutNoticePipelineOwner, this.deprecatedDoNotUseWillBeRemovedWithoutNoticeRenderView, });

final _i2.Key key;

final _i5.FlutterView view;

final _i75.PipelineOwner deprecatedDoNotUseWillBeRemovedWithoutNoticePipelineOwner;

final _i76.RenderView deprecatedDoNotUseWillBeRemovedWithoutNoticeRenderView;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.RawView
(); } 
 }
class $ViewCollection extends _i1.StatelessWidget {$ViewCollection(this.views, {this.key, });

final _i2.Key key;

final List<_i3.Widget> views;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ViewCollection
(); } 
 }
class $ViewAnchor extends _i1.StatelessWidget {$ViewAnchor(this.child, {this.key, this.view, });

final _i2.Key key;

final _i3.Widget view;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ViewAnchor
(); } 
 }
class $Hero extends _i1.StatelessWidget {$Hero(this.tag, this.child, {this.key, this.createRectTween, this.flightShuttleBuilder, this.placeholderBuilder, this.transitionOnUserGestures, });

final _i2.Key key;

final Object tag;

final _i72.CreateRectTween createRectTween;

final _i72.HeroFlightShuttleBuilder flightShuttleBuilder;

final _i72.HeroPlaceholderBuilder placeholderBuilder;

final bool transitionOnUserGestures;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Hero
(); } 
 }
class $HeroMode extends _i1.StatelessWidget {$HeroMode(this.child, {this.key, this.enabled, });

final _i2.Key key;

final _i3.Widget child;

final bool enabled;

_i1.Widget build(_i1.BuildContext context) { return
_i4.HeroMode
(); } 
 }
class $AnimatedContainer extends _i1.StatelessWidget {$AnimatedContainer(this.duration, {this.key, this.alignment, this.padding, this.color, this.decoration, this.foregroundDecoration, this.width, this.height, this.constraints, this.margin, this.transform, this.transformAlignment, this.child, this.clipBehavior, this.curve, this.onEnd, });

final _i2.Key key;

final _i11.AlignmentGeometry alignment;

final _i14.EdgeInsetsGeometry padding;

final _i5.Color color;

final _i67.Decoration decoration;

final _i67.Decoration foregroundDecoration;

final double width;

final double height;

final _i17.BoxConstraints constraints;

final _i14.EdgeInsetsGeometry margin;

final _i10.Matrix4 transform;

final _i11.AlignmentGeometry transformAlignment;

final _i3.Widget child;

final _i5.Clip clipBehavior;

final _i77.Curve curve;

final Duration duration;

final _i5.VoidCallback onEnd;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AnimatedContainer
(); } 
 }
class $AnimatedPadding extends _i1.StatelessWidget {$AnimatedPadding(this.padding, this.duration, {this.key, this.child, this.curve, this.onEnd, });

final _i2.Key key;

final _i14.EdgeInsetsGeometry padding;

final _i3.Widget child;

final _i77.Curve curve;

final Duration duration;

final _i5.VoidCallback onEnd;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AnimatedPadding
(); } 
 }
class $AnimatedAlign extends _i1.StatelessWidget {$AnimatedAlign(this.alignment, this.duration, {this.key, this.child, this.heightFactor, this.widthFactor, this.curve, this.onEnd, });

final _i2.Key key;

final _i11.AlignmentGeometry alignment;

final _i3.Widget child;

final double heightFactor;

final double widthFactor;

final _i77.Curve curve;

final Duration duration;

final _i5.VoidCallback onEnd;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AnimatedAlign
(); } 
 }
class $AnimatedPositioned extends _i1.StatelessWidget {$AnimatedPositioned(this.child, this.duration, {this.key, this.left, this.top, this.right, this.bottom, this.width, this.height, this.curve, this.onEnd, });

final _i2.Key key;

final _i3.Widget child;

final double left;

final double top;

final double right;

final double bottom;

final double width;

final double height;

final _i77.Curve curve;

final Duration duration;

final _i5.VoidCallback onEnd;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AnimatedPositioned
(); } 
 }
class $AnimatedPositionedDirectional extends _i1.StatelessWidget {$AnimatedPositionedDirectional(this.child, this.duration, {this.key, this.start, this.top, this.end, this.bottom, this.width, this.height, this.curve, this.onEnd, });

final _i2.Key key;

final _i3.Widget child;

final double start;

final double top;

final double end;

final double bottom;

final double width;

final double height;

final _i77.Curve curve;

final Duration duration;

final _i5.VoidCallback onEnd;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AnimatedPositionedDirectional
(); } 
 }
class $AnimatedScale extends _i1.StatelessWidget {$AnimatedScale(this.scale, this.duration, {this.key, this.child, this.alignment, this.filterQuality, this.curve, this.onEnd, });

final _i2.Key key;

final _i3.Widget child;

final double scale;

final _i11.Alignment alignment;

final _i5.FilterQuality filterQuality;

final _i77.Curve curve;

final Duration duration;

final _i5.VoidCallback onEnd;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AnimatedScale
(); } 
 }
class $AnimatedRotation extends _i1.StatelessWidget {$AnimatedRotation(this.turns, this.duration, {this.key, this.child, this.alignment, this.filterQuality, this.curve, this.onEnd, });

final _i2.Key key;

final _i3.Widget child;

final double turns;

final _i11.Alignment alignment;

final _i5.FilterQuality filterQuality;

final _i77.Curve curve;

final Duration duration;

final _i5.VoidCallback onEnd;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AnimatedRotation
(); } 
 }
class $AnimatedSlide extends _i1.StatelessWidget {$AnimatedSlide(this.offset, this.duration, {this.key, this.child, this.curve, this.onEnd, });

final _i2.Key key;

final _i3.Widget child;

final _i5.Offset offset;

final _i77.Curve curve;

final Duration duration;

final _i5.VoidCallback onEnd;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AnimatedSlide
(); } 
 }
class $AnimatedOpacity extends _i1.StatelessWidget {$AnimatedOpacity(this.opacity, this.duration, {this.key, this.child, this.curve, this.onEnd, this.alwaysIncludeSemantics, });

final _i2.Key key;

final _i3.Widget child;

final double opacity;

final _i77.Curve curve;

final Duration duration;

final _i5.VoidCallback onEnd;

final bool alwaysIncludeSemantics;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AnimatedOpacity
(); } 
 }
class $SliverAnimatedOpacity extends _i1.StatelessWidget {$SliverAnimatedOpacity(this.opacity, this.duration, {this.key, this.sliver, this.curve, this.onEnd, this.alwaysIncludeSemantics, });

final _i2.Key key;

final _i3.Widget sliver;

final double opacity;

final _i77.Curve curve;

final Duration duration;

final _i5.VoidCallback onEnd;

final bool alwaysIncludeSemantics;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SliverAnimatedOpacity
(); } 
 }
class $AnimatedDefaultTextStyle extends _i1.StatelessWidget {$AnimatedDefaultTextStyle(this.child, this.style, this.duration, {this.key, this.textAlign, this.softWrap, this.overflow, this.maxLines, this.textWidthBasis, this.textHeightBehavior, this.curve, this.onEnd, });

final _i2.Key key;

final _i3.Widget child;

final _i38.TextStyle style;

final _i5.TextAlign textAlign;

final bool softWrap;

final _i24.TextOverflow overflow;

final int maxLines;

final _i24.TextWidthBasis textWidthBasis;

final _i5.TextHeightBehavior textHeightBehavior;

final _i77.Curve curve;

final Duration duration;

final _i5.VoidCallback onEnd;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AnimatedDefaultTextStyle
(); } 
 }
class $AnimatedPhysicalModel extends _i1.StatelessWidget {$AnimatedPhysicalModel(this.child, this.color, this.shadowColor, this.duration, {this.key, this.shape, this.clipBehavior, this.borderRadius, this.elevation, this.animateColor, this.animateShadowColor, this.curve, this.onEnd, });

final _i2.Key key;

final _i3.Widget child;

final _i9.BoxShape shape;

final _i5.Clip clipBehavior;

final _i8.BorderRadius borderRadius;

final double elevation;

final _i5.Color color;

final bool animateColor;

final _i5.Color shadowColor;

final bool animateShadowColor;

final _i77.Curve curve;

final Duration duration;

final _i5.VoidCallback onEnd;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AnimatedPhysicalModel
(); } 
 }
class $AnimatedFractionallySizedBox extends _i1.StatelessWidget {$AnimatedFractionallySizedBox(this.duration, {this.key, this.alignment, this.child, this.heightFactor, this.widthFactor, this.curve, this.onEnd, });

final _i2.Key key;

final _i11.AlignmentGeometry alignment;

final _i3.Widget child;

final double heightFactor;

final double widthFactor;

final _i77.Curve curve;

final Duration duration;

final _i5.VoidCallback onEnd;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AnimatedFractionallySizedBox
(); } 
 }
class $DisplayFeatureSubScreen extends _i1.StatelessWidget {$DisplayFeatureSubScreen(this.child, {this.key, this.anchorPoint, });

final _i2.Key key;

final _i5.Offset anchorPoint;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DisplayFeatureSubScreen
(); } 
 }
class $ModalBarrier extends _i1.StatelessWidget {$ModalBarrier({this.key, this.color, this.dismissible, this.onDismiss, this.semanticsLabel, this.barrierSemanticsDismissible, this.clipDetailsNotifier, this.semanticsOnTapHint, });

final _i2.Key key;

final _i5.Color color;

final bool dismissible;

final _i5.VoidCallback onDismiss;

final String semanticsLabel;

final bool barrierSemanticsDismissible;

final _i68.ValueNotifier<_i14.EdgeInsets> clipDetailsNotifier;

final String semanticsOnTapHint;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ModalBarrier
(); } 
 }
class $AnimatedModalBarrier extends _i1.StatelessWidget {$AnimatedModalBarrier(this.color, {this.key, this.dismissible, this.semanticsLabel, this.barrierSemanticsDismissible, this.onDismiss, this.clipDetailsNotifier, this.semanticsOnTapHint, });

final _i2.Key key;

final _i28.Animation<_i5.Color> color;

final bool dismissible;

final String semanticsLabel;

final bool barrierSemanticsDismissible;

final _i5.VoidCallback onDismiss;

final _i68.ValueNotifier<_i14.EdgeInsets> clipDetailsNotifier;

final String semanticsOnTapHint;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AnimatedModalBarrier
(); } 
 }
class $PrimaryScrollController extends _i1.StatelessWidget {$PrimaryScrollController(this.controller, this.child, {this.key, this.automaticallyInheritForPlatforms, this.scrollDirection, });

final _i2.Key key;

final _i52.ScrollController controller;

final Set<_i78.TargetPlatform> automaticallyInheritForPlatforms;

final _i18.Axis scrollDirection;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.PrimaryScrollController
(); } 
 }
class $RestorationScope extends _i1.StatelessWidget {$RestorationScope(this.restorationId, this.child, {this.key, });

final _i2.Key key;

final String restorationId;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.RestorationScope
(); } 
 }
class $UnmanagedRestorationScope extends _i1.StatelessWidget {$UnmanagedRestorationScope(this.child, {this.key, this.bucket, });

final _i2.Key key;

final _i79.RestorationBucket bucket;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.UnmanagedRestorationScope
(); } 
 }
class $RootRestorationScope extends _i1.StatelessWidget {$RootRestorationScope(this.restorationId, this.child, {this.key, });

final _i2.Key key;

final String restorationId;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.RootRestorationScope
(); } 
 }
class $EditableText extends _i1.StatelessWidget {$EditableText(this.controller, this.focusNode, this.style, this.cursorColor, this.backgroundCursorColor, {this.key, this.readOnly, this.obscuringCharacter, this.obscureText, this.autocorrect, this.smartDashesType, this.smartQuotesType, this.enableSuggestions, this.strutStyle, this.textAlign, this.textDirection, this.locale, this.textScaleFactor, this.textScaler, this.maxLines, this.minLines, this.expands, this.forceLine, this.textHeightBehavior, this.textWidthBasis, this.autofocus, this.showCursor, this.showSelectionHandles, this.selectionColor, this.selectionControls, this.keyboardType, this.textInputAction, this.textCapitalization, this.onChanged, this.onEditingComplete, this.onSubmitted, this.onAppPrivateCommand, this.onSelectionChanged, this.onSelectionHandleTapped, this.groupId, this.onTapOutside, this.inputFormatters, this.mouseCursor, this.rendererIgnoresPointer, this.cursorWidth, this.cursorHeight, this.cursorRadius, this.cursorOpacityAnimates, this.cursorOffset, this.paintCursorAboveText, this.selectionHeightStyle, this.selectionWidthStyle, this.scrollPadding, this.keyboardAppearance, this.dragStartBehavior, this.enableInteractiveSelection, this.scrollController, this.scrollPhysics, this.autocorrectionTextRectColor, this.toolbarOptions, this.autofillHints, this.autofillClient, this.clipBehavior, this.restorationId, this.scrollBehavior, this.scribbleEnabled, this.enableIMEPersonalizedLearning, this.contentInsertionConfiguration, this.contextMenuBuilder, this.spellCheckConfiguration, this.magnifierConfiguration, this.undoController, });

final _i2.Key key;

final _i80.TextEditingController controller;

final _i43.FocusNode focusNode;

final bool readOnly;

final String obscuringCharacter;

final bool obscureText;

final bool autocorrect;

final _i81.SmartDashesType smartDashesType;

final _i81.SmartQuotesType smartQuotesType;

final bool enableSuggestions;

final _i38.TextStyle style;

final _i26.StrutStyle strutStyle;

final _i5.Color cursorColor;

final _i5.Color backgroundCursorColor;

final _i5.TextAlign textAlign;

final _i5.TextDirection textDirection;

final _i5.Locale locale;

final double textScaleFactor;

final _i25.TextScaler textScaler;

final int maxLines;

final int minLines;

final bool expands;

final bool forceLine;

final _i5.TextHeightBehavior textHeightBehavior;

final _i24.TextWidthBasis textWidthBasis;

final bool autofocus;

final bool showCursor;

final bool showSelectionHandles;

final _i5.Color selectionColor;

final _i70.TextSelectionControls selectionControls;

final _i81.TextInputType keyboardType;

final _i81.TextInputAction textInputAction;

final _i81.TextCapitalization textCapitalization;

final _i44.ValueChanged<String> onChanged;

final _i5.VoidCallback onEditingComplete;

final _i44.ValueChanged<String> onSubmitted;

final _i80.AppPrivateCommandCallback onAppPrivateCommand;

final _i80.SelectionChangedCallback onSelectionChanged;

final _i5.VoidCallback onSelectionHandleTapped;

final Object groupId;

final _i82.TapRegionCallback onTapOutside;

final List<_i83.TextInputFormatter> inputFormatters;

final _i32.MouseCursor mouseCursor;

final bool rendererIgnoresPointer;

final double cursorWidth;

final double cursorHeight;

final _i5.Radius cursorRadius;

final bool cursorOpacityAnimates;

final _i5.Offset cursorOffset;

final bool paintCursorAboveText;

final _i5.BoxHeightStyle selectionHeightStyle;

final _i5.BoxWidthStyle selectionWidthStyle;

final _i14.EdgeInsets scrollPadding;

final _i5.Brightness keyboardAppearance;

final _i56.DragStartBehavior dragStartBehavior;

final bool enableInteractiveSelection;

final _i52.ScrollController scrollController;

final _i53.ScrollPhysics scrollPhysics;

final _i5.Color autocorrectionTextRectColor;

final _i80.ToolbarOptions toolbarOptions;

final Iterable<String> autofillHints;

final _i84.AutofillClient autofillClient;

final _i5.Clip clipBehavior;

final String restorationId;

final _i57.ScrollBehavior scrollBehavior;

final bool scribbleEnabled;

final bool enableIMEPersonalizedLearning;

final _i80.ContentInsertionConfiguration contentInsertionConfiguration;

final _i80.EditableTextContextMenuBuilder contextMenuBuilder;

final _i85.SpellCheckConfiguration spellCheckConfiguration;

final _i71.TextMagnifierConfiguration magnifierConfiguration;

final _i86.UndoHistoryController undoController;

_i1.Widget build(_i1.BuildContext context) { return
_i4.EditableText
(); } 
 }
class $AutofillGroup extends _i1.StatelessWidget {$AutofillGroup(this.child, {this.key, this.onDisposeAction, });

final _i2.Key key;

final _i3.Widget child;

final _i87.AutofillContextAction onDisposeAction;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AutofillGroup
(); } 
 }
class $AutomaticKeepAlive extends _i1.StatelessWidget {$AutomaticKeepAlive(this.child, {this.key, });

final _i2.Key key;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AutomaticKeepAlive
(); } 
 }
class $SliverList extends _i1.StatelessWidget {$SliverList(this.delegate, {this.key, });

final _i2.Key key;

final _i88.SliverChildDelegate delegate;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SliverList
(); } 
 }
class $SliverFixedExtentList extends _i1.StatelessWidget {$SliverFixedExtentList(this.delegate, this.itemExtent, {this.key, });

final _i2.Key key;

final _i88.SliverChildDelegate delegate;

final double itemExtent;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SliverFixedExtentList
(); } 
 }
class $SliverVariedExtentList extends _i1.StatelessWidget {$SliverVariedExtentList(this.delegate, this.itemExtentBuilder, {this.key, });

final _i2.Key key;

final _i88.SliverChildDelegate delegate;

final _i89.ItemExtentBuilder itemExtentBuilder;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SliverVariedExtentList
(); } 
 }
class $SliverGrid extends _i1.StatelessWidget {$SliverGrid(this.delegate, this.gridDelegate, {this.key, });

final _i2.Key key;

final _i88.SliverChildDelegate delegate;

final _i90.SliverGridDelegate gridDelegate;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SliverGrid
(); } 
 }
class $SliverOpacity extends _i1.StatelessWidget {$SliverOpacity(this.opacity, {this.key, this.alwaysIncludeSemantics, this.sliver, });

final _i2.Key key;

final double opacity;

final bool alwaysIncludeSemantics;

final _i3.Widget sliver;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SliverOpacity
(); } 
 }
class $SliverIgnorePointer extends _i1.StatelessWidget {$SliverIgnorePointer({this.key, this.ignoring, this.ignoringSemantics, this.sliver, });

final _i2.Key key;

final bool ignoring;

final bool ignoringSemantics;

final _i3.Widget sliver;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SliverIgnorePointer
(); } 
 }
class $SliverOffstage extends _i1.StatelessWidget {$SliverOffstage({this.key, this.offstage, this.sliver, });

final _i2.Key key;

final bool offstage;

final _i3.Widget sliver;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SliverOffstage
(); } 
 }
class $KeepAlive extends _i1.StatelessWidget {$KeepAlive(this.keepAlive, this.child, {this.key, });

final _i2.Key key;

final bool keepAlive;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.KeepAlive
(); } 
 }
class $SliverConstrainedCrossAxis extends _i1.StatelessWidget {$SliverConstrainedCrossAxis(this.maxExtent, this.sliver, {this.key, });

final _i2.Key key;

final double maxExtent;

final _i3.Widget sliver;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SliverConstrainedCrossAxis
(); } 
 }
class $SliverCrossAxisExpanded extends _i1.StatelessWidget {$SliverCrossAxisExpanded(this.flex, this.sliver, {this.key, });

final _i2.Key key;

final int flex;

final _i3.Widget sliver;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SliverCrossAxisExpanded
(); } 
 }
class $SliverCrossAxisGroup extends _i1.StatelessWidget {$SliverCrossAxisGroup(this.slivers, {this.key, });

final _i2.Key key;

final List<_i3.Widget> slivers;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SliverCrossAxisGroup
(); } 
 }
class $SliverMainAxisGroup extends _i1.StatelessWidget {$SliverMainAxisGroup(this.slivers, {this.key, });

final _i2.Key key;

final List<_i3.Widget> slivers;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SliverMainAxisGroup
(); } 
 }
class $SelectionContainer extends _i1.StatelessWidget {$SelectionContainer(this.delegate, this.child, {this.key, this.registrar, });

final _i2.Key key;

final _i27.SelectionRegistrar registrar;

final _i91.SelectionContainerDelegate delegate;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SelectionContainer
(); } 
 }
class $SelectionRegistrarScope extends _i1.StatelessWidget {$SelectionRegistrarScope(this.registrar, this.child, {this.key, });

final _i2.Key key;

final _i27.SelectionRegistrar registrar;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SelectionRegistrarScope
(); } 
 }
class $DefaultTextEditingShortcuts extends _i1.StatelessWidget {$DefaultTextEditingShortcuts(this.child, {this.key, });

final _i2.Key key;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DefaultTextEditingShortcuts
(); } 
 }
class $Shortcuts extends _i1.StatelessWidget {$Shortcuts(this.shortcuts, this.child, {this.key, this.debugLabel, });

final _i2.Key key;

final Map<_i41.ShortcutActivator,_i42.Intent> shortcuts;

final _i3.Widget child;

final String debugLabel;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Shortcuts
(); } 
 }
class $CallbackShortcuts extends _i1.StatelessWidget {$CallbackShortcuts(this.bindings, this.child, {this.key, });

final _i2.Key key;

final Map<_i41.ShortcutActivator,_i5.VoidCallback> bindings;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CallbackShortcuts
(); } 
 }
class $ShortcutRegistrar extends _i1.StatelessWidget {$ShortcutRegistrar(this.child, {this.key, });

final _i2.Key key;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ShortcutRegistrar
(); } 
 }
class $PlatformMenuBar extends _i1.StatelessWidget {$PlatformMenuBar(this.menus, {this.key, this.child, });

final _i2.Key key;

final List<_i92.PlatformMenuItem> menus;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.PlatformMenuBar
(); } 
 }
class $ScrollNotificationObserver extends _i1.StatelessWidget {$ScrollNotificationObserver(this.child, {this.key, });

final _i2.Key key;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ScrollNotificationObserver
(); } 
 }
class $SizeChangedLayoutNotifier extends _i1.StatelessWidget {$SizeChangedLayoutNotifier({this.key, this.child, });

final _i2.Key key;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SizeChangedLayoutNotifier
(); } 
 }
class $TapRegionSurface extends _i1.StatelessWidget {$TapRegionSurface(this.child, {this.key, });

final _i2.Key key;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.TapRegionSurface
(); } 
 }
class $TapRegion extends _i1.StatelessWidget {$TapRegion(this.child, {this.key, this.enabled, this.behavior, this.onTapOutside, this.onTapInside, this.groupId, this.consumeOutsideTaps, this.debugLabel, });

final _i2.Key key;

final _i3.Widget child;

final bool enabled;

final _i6.HitTestBehavior behavior;

final _i82.TapRegionCallback onTapOutside;

final _i82.TapRegionCallback onTapInside;

final Object groupId;

final bool consumeOutsideTaps;

final String debugLabel;

_i1.Widget build(_i1.BuildContext context) { return
_i4.TapRegion
(); } 
 }
class $TextFieldTapRegion extends _i1.StatelessWidget {$TextFieldTapRegion(this.child, {this.key, this.enabled, this.onTapOutside, this.onTapInside, this.consumeOutsideTaps, this.debugLabel, this.groupId, });

final _i2.Key key;

final _i3.Widget child;

final bool enabled;

final _i82.TapRegionCallback onTapOutside;

final _i82.TapRegionCallback onTapInside;

final bool consumeOutsideTaps;

final String debugLabel;

final Object groupId;

_i1.Widget build(_i1.BuildContext context) { return
_i4.TextFieldTapRegion
(); } 
 }
class $TextSelectionGestureDetector extends _i1.StatelessWidget {$TextSelectionGestureDetector(this.child, {this.key, this.onTapTrackStart, this.onTapTrackReset, this.onTapDown, this.onForcePressStart, this.onForcePressEnd, this.onSecondaryTap, this.onSecondaryTapDown, this.onSingleTapUp, this.onSingleTapCancel, this.onUserTap, this.onSingleLongTapStart, this.onSingleLongTapMoveUpdate, this.onSingleLongTapEnd, this.onDoubleTapDown, this.onTripleTapDown, this.onDragSelectionStart, this.onDragSelectionUpdate, this.onDragSelectionEnd, this.onUserTapAlwaysCalled, this.behavior, });

final _i2.Key key;

final _i5.VoidCallback onTapTrackStart;

final _i5.VoidCallback onTapTrackReset;

final _i93.GestureTapDragDownCallback onTapDown;

final _i62.GestureForcePressStartCallback onForcePressStart;

final _i62.GestureForcePressEndCallback onForcePressEnd;

final _i58.GestureTapCallback onSecondaryTap;

final _i58.GestureTapDownCallback onSecondaryTapDown;

final _i93.GestureTapDragUpCallback onSingleTapUp;

final _i93.GestureCancelCallback onSingleTapCancel;

final _i58.GestureTapCallback onUserTap;

final _i59.GestureLongPressStartCallback onSingleLongTapStart;

final _i59.GestureLongPressMoveUpdateCallback onSingleLongTapMoveUpdate;

final _i59.GestureLongPressEndCallback onSingleLongTapEnd;

final _i93.GestureTapDragDownCallback onDoubleTapDown;

final _i93.GestureTapDragDownCallback onTripleTapDown;

final _i93.GestureTapDragStartCallback onDragSelectionStart;

final _i93.GestureTapDragUpdateCallback onDragSelectionUpdate;

final _i93.GestureTapDragEndCallback onDragSelectionEnd;

final bool onUserTapAlwaysCalled;

final _i6.HitTestBehavior behavior;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.TextSelectionGestureDetector
(); } 
 }
class $UndoHistory extends _i1.StatelessWidget {$UndoHistory(this.value, this.onTriggered, this.focusNode, this.child, {this.key, this.shouldChangeUndoStack, this.undoStackModifier, this.controller, });

final _i2.Key key;

final bool Function(T, T, ) shouldChangeUndoStack;

final _i68.ValueNotifier<T> value;

final void Function(T) onTriggered;

final _i43.FocusNode focusNode;

final T Function(T) undoStackModifier;

final _i86.UndoHistoryController controller;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.UndoHistory
(); } 
 }
class $PlatformSelectableRegionContextMenu extends _i1.StatelessWidget {$PlatformSelectableRegionContextMenu(this.child, {this.key, });

final _i3.Widget child;

final _i2.Key key;

_i1.Widget build(_i1.BuildContext context) { return
_i4.PlatformSelectableRegionContextMenu
(); } 
 }
class $RawScrollbar extends _i1.StatelessWidget {$RawScrollbar(this.child, {this.key, this.controller, this.thumbVisibility, this.shape, this.radius, this.thickness, this.thumbColor, this.minThumbLength, this.minOverscrollLength, this.trackVisibility, this.trackRadius, this.trackColor, this.trackBorderColor, this.fadeDuration, this.timeToFade, this.pressDuration, this.notificationPredicate, this.interactive, this.scrollbarOrientation, this.mainAxisMargin, this.crossAxisMargin, this.padding, });

final _i2.Key key;

final _i3.Widget child;

final _i52.ScrollController controller;

final bool thumbVisibility;

final _i94.OutlinedBorder shape;

final _i5.Radius radius;

final double thickness;

final _i5.Color thumbColor;

final double minThumbLength;

final double minOverscrollLength;

final bool trackVisibility;

final _i5.Radius trackRadius;

final _i5.Color trackColor;

final _i5.Color trackBorderColor;

final Duration fadeDuration;

final Duration timeToFade;

final Duration pressDuration;

final _i65.ScrollNotificationPredicate notificationPredicate;

final bool interactive;

final _i95.ScrollbarOrientation scrollbarOrientation;

final double mainAxisMargin;

final double crossAxisMargin;

final _i14.EdgeInsets padding;

_i1.Widget build(_i1.BuildContext context) { return
_i4.RawScrollbar
(); } 
 }
class $Viewport extends _i1.StatelessWidget {$Viewport(this.offset, {this.key, this.axisDirection, this.crossAxisDirection, this.anchor, this.center, this.cacheExtent, this.cacheExtentStyle, this.clipBehavior, this.slivers, });

final _i2.Key key;

final _i18.AxisDirection axisDirection;

final _i18.AxisDirection crossAxisDirection;

final double anchor;

final _i96.ViewportOffset offset;

final _i2.Key center;

final double cacheExtent;

final _i97.CacheExtentStyle cacheExtentStyle;

final _i5.Clip clipBehavior;

final List<_i3.Widget> slivers;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Viewport
(); } 
 }
class $ShrinkWrappingViewport extends _i1.StatelessWidget {$ShrinkWrappingViewport(this.offset, {this.key, this.axisDirection, this.crossAxisDirection, this.clipBehavior, this.slivers, });

final _i2.Key key;

final _i18.AxisDirection axisDirection;

final _i18.AxisDirection crossAxisDirection;

final _i96.ViewportOffset offset;

final _i5.Clip clipBehavior;

final List<_i3.Widget> slivers;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ShrinkWrappingViewport
(); } 
 }
class $WidgetInspector extends _i1.StatelessWidget {$WidgetInspector(this.child, this.selectButtonBuilder, {this.key, });

final _i2.Key key;

final _i3.Widget child;

final _i40.InspectorSelectButtonBuilder selectButtonBuilder;

_i1.Widget build(_i1.BuildContext context) { return
_i4.WidgetInspector
(); } 
 }
class $Banner extends _i1.StatelessWidget {$Banner(this.message, this.location, {this.key, this.child, this.textDirection, this.layoutDirection, this.color, this.textStyle, });

final _i2.Key key;

final _i3.Widget child;

final String message;

final _i5.TextDirection textDirection;

final _i98.BannerLocation location;

final _i5.TextDirection layoutDirection;

final _i5.Color color;

final _i38.TextStyle textStyle;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Banner
(); } 
 }
class $CheckedModeBanner extends _i1.StatelessWidget {$CheckedModeBanner(this.child, {this.key, });

final _i2.Key key;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CheckedModeBanner
(); } 
 }
class $PerformanceOverlay extends _i1.StatelessWidget {$PerformanceOverlay({this.key, this.optionsMask, });

final _i2.Key key;

final int optionsMask;

_i1.Widget build(_i1.BuildContext context) { return
_i4.PerformanceOverlay
(); } 
 }
class $Router extends _i1.StatelessWidget {$Router(this.routerDelegate, {this.key, this.routeInformationProvider, this.routeInformationParser, this.backButtonDispatcher, this.restorationScopeId, });

final _i2.Key key;

final _i99.RouteInformationProvider routeInformationProvider;

final _i99.RouteInformationParser<T> routeInformationParser;

final _i99.RouterDelegate<T> routerDelegate;

final _i99.BackButtonDispatcher backButtonDispatcher;

final String restorationScopeId;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Router
(); } 
 }
class $BackButtonListener extends _i1.StatelessWidget {$BackButtonListener(this.child, this.onBackButtonPressed, {this.key, });

final _i2.Key key;

final _i3.Widget child;

final _i44.ValueGetter<_i100.Future<bool>> onBackButtonPressed;

_i1.Widget build(_i1.BuildContext context) { return
_i4.BackButtonListener
(); } 
 }
class $SemanticsDebugger extends _i1.StatelessWidget {$SemanticsDebugger(this.child, {this.key, this.labelStyle, });

final _i2.Key key;

final _i3.Widget child;

final _i38.TextStyle labelStyle;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SemanticsDebugger
(); } 
 }
class $SharedAppData extends _i1.StatelessWidget {$SharedAppData(this.child, {this.key, });

final _i2.Key key;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SharedAppData
(); } 
 }
class $Title extends _i1.StatelessWidget {$Title(this.color, this.child, {this.key, this.title, });

final _i2.Key key;

final String title;

final _i5.Color color;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Title
(); } 
 }
class $ValueListenableBuilder extends _i1.StatelessWidget {$ValueListenableBuilder(this.valueListenable, this.builder, {this.key, this.child, });

final _i2.Key key;

final _i68.ValueListenable<T> valueListenable;

final _i101.ValueWidgetBuilder<T> builder;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ValueListenableBuilder
(); } 
 }
class $Visibility extends _i1.StatelessWidget {$Visibility(this.child, {this.key, this.replacement, this.visible, this.maintainState, this.maintainAnimation, this.maintainSize, this.maintainSemantics, this.maintainInteractivity, });

final _i2.Key key;

final _i3.Widget child;

final _i3.Widget replacement;

final bool visible;

final bool maintainState;

final bool maintainAnimation;

final bool maintainSize;

final bool maintainSemantics;

final bool maintainInteractivity;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Visibility
(); } 
 }
class $SliverVisibility extends _i1.StatelessWidget {$SliverVisibility(this.sliver, {this.key, this.replacementSliver, this.visible, this.maintainState, this.maintainAnimation, this.maintainSize, this.maintainSemantics, this.maintainInteractivity, });

final _i2.Key key;

final _i3.Widget sliver;

final _i3.Widget replacementSliver;

final bool visible;

final bool maintainState;

final bool maintainAnimation;

final bool maintainSize;

final bool maintainSemantics;

final bool maintainInteractivity;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SliverVisibility
(); } 
 }
class $CupertinoUserInterfaceLevel extends _i1.StatelessWidget {$CupertinoUserInterfaceLevel(this.data, this.child, {this.key, });

final _i2.Key key;

final _i102.CupertinoUserInterfaceLevelData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoUserInterfaceLevel
(); } 
 }
class $CupertinoTheme extends _i1.StatelessWidget {$CupertinoTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i103.CupertinoThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoTheme
(); } 
 }
class $InheritedCupertinoTheme extends _i1.StatelessWidget {$InheritedCupertinoTheme(this.theme, this.child, {this.key, });

final _i2.Key key;

final _i103.CupertinoTheme theme;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.InheritedCupertinoTheme
(); } 
 }
class $CupertinoAdaptiveTextSelectionToolbar extends _i1.StatelessWidget {$CupertinoAdaptiveTextSelectionToolbar(this.children, this.anchors, {this.key, });

final _i2.Key key;

final List<_i3.Widget> children;

final _i104.TextSelectionToolbarAnchors anchors;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoAdaptiveTextSelectionToolbar
(); } 
 }
class $CupertinoDesktopTextSelectionToolbar extends _i1.StatelessWidget {$CupertinoDesktopTextSelectionToolbar(this.anchor, this.children, {this.key, });

final _i2.Key key;

final _i5.Offset anchor;

final List<_i3.Widget> children;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoDesktopTextSelectionToolbar
(); } 
 }
class $CupertinoDesktopTextSelectionToolbarButton extends _i1.StatelessWidget {$CupertinoDesktopTextSelectionToolbarButton(this.onPressed, this.child, {this.key, });

final _i2.Key key;

final _i5.VoidCallback onPressed;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoDesktopTextSelectionToolbarButton
(); } 
 }
class $CupertinoButton extends _i1.StatelessWidget {$CupertinoButton(this.child, this.onPressed, {this.key, this.padding, this.color, this.disabledColor, this.minSize, this.pressedOpacity, this.borderRadius, this.alignment, this.focusColor, this.focusNode, this.onFocusChange, this.autofocus, });

final _i2.Key key;

final _i3.Widget child;

final _i14.EdgeInsetsGeometry padding;

final _i5.Color color;

final _i5.Color disabledColor;

final double minSize;

final double pressedOpacity;

final _i8.BorderRadius borderRadius;

final _i11.AlignmentGeometry alignment;

final _i5.Color focusColor;

final _i43.FocusNode focusNode;

final _i44.ValueChanged<bool> onFocusChange;

final bool autofocus;

final _i5.VoidCallback onPressed;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoButton
(); } 
 }
class $CupertinoTextSelectionToolbarButton extends _i1.StatelessWidget {$CupertinoTextSelectionToolbarButton(this.child, {this.key, this.onPressed, });

final _i2.Key key;

final _i5.VoidCallback onPressed;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoTextSelectionToolbarButton
(); } 
 }
class $CupertinoTextSelectionToolbar extends _i1.StatelessWidget {$CupertinoTextSelectionToolbar(this.anchorAbove, this.anchorBelow, this.children, {this.key, this.toolbarBuilder, });

final _i2.Key key;

final _i5.Offset anchorAbove;

final _i5.Offset anchorBelow;

final List<_i3.Widget> children;

final _i105.CupertinoToolbarBuilder toolbarBuilder;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoTextSelectionToolbar
(); } 
 }
class $CupertinoApp extends _i1.StatelessWidget {$CupertinoApp({this.key, this.navigatorKey, this.home, this.theme, this.routes, this.initialRoute, this.onGenerateRoute, this.onGenerateInitialRoutes, this.onUnknownRoute, this.onNavigationNotification, this.navigatorObservers, this.builder, this.title, this.onGenerateTitle, this.color, this.locale, this.localizationsDelegates, this.localeListResolutionCallback, this.localeResolutionCallback, this.supportedLocales, this.showPerformanceOverlay, this.checkerboardRasterCacheImages, this.checkerboardOffscreenLayers, this.showSemanticsDebugger, this.debugShowCheckedModeBanner, this.shortcuts, this.actions, this.restorationScopeId, this.scrollBehavior, this.useInheritedMediaQuery, });

final _i2.Key key;

final _i3.GlobalKey<_i35.NavigatorState> navigatorKey;

final _i3.Widget home;

final _i103.CupertinoThemeData theme;

final Map<String,_i3.Widget Function(_i3.BuildContext)> routes;

final String initialRoute;

final _i35.RouteFactory onGenerateRoute;

final _i36.InitialRouteListFactory onGenerateInitialRoutes;

final _i35.RouteFactory onUnknownRoute;

final _i37.NotificationListenerCallback<_i35.NavigationNotification> onNavigationNotification;

final List<_i35.NavigatorObserver> navigatorObservers;

final _i3.TransitionBuilder builder;

final String title;

final _i36.GenerateAppTitle onGenerateTitle;

final _i5.Color color;

final _i5.Locale locale;

final Iterable<_i39.LocalizationsDelegate<dynamic>> localizationsDelegates;

final _i36.LocaleListResolutionCallback localeListResolutionCallback;

final _i36.LocaleResolutionCallback localeResolutionCallback;

final Iterable<_i5.Locale> supportedLocales;

final bool showPerformanceOverlay;

final bool checkerboardRasterCacheImages;

final bool checkerboardOffscreenLayers;

final bool showSemanticsDebugger;

final bool debugShowCheckedModeBanner;

final Map<_i41.ShortcutActivator,_i42.Intent> shortcuts;

final Map<Type,_i42.Action<_i42.Intent>> actions;

final String restorationScopeId;

final _i57.ScrollBehavior scrollBehavior;

final bool useInheritedMediaQuery;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoApp
(); } 
 }
class $CupertinoPageTransition extends _i1.StatelessWidget {$CupertinoPageTransition(this.primaryRouteAnimation, this.secondaryRouteAnimation, this.child, this.linearTransition, {this.key, });

final _i2.Key key;

final _i28.Animation<double> primaryRouteAnimation;

final _i28.Animation<double> secondaryRouteAnimation;

final _i3.Widget child;

final bool linearTransition;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoPageTransition
(); } 
 }
class $CupertinoFullscreenDialogTransition extends _i1.StatelessWidget {$CupertinoFullscreenDialogTransition(this.primaryRouteAnimation, this.secondaryRouteAnimation, this.child, this.linearTransition, {this.key, });

final _i2.Key key;

final _i28.Animation<double> primaryRouteAnimation;

final _i28.Animation<double> secondaryRouteAnimation;

final _i3.Widget child;

final bool linearTransition;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoFullscreenDialogTransition
(); } 
 }
class $CupertinoScrollbar extends _i1.StatelessWidget {$CupertinoScrollbar(this.child, {this.key, this.controller, this.thumbVisibility, this.thickness, this.thicknessWhileDragging, this.radius, this.radiusWhileDragging, this.notificationPredicate, this.scrollbarOrientation, });

final _i2.Key key;

final _i3.Widget child;

final _i52.ScrollController controller;

final bool thumbVisibility;

final double thickness;

final double thicknessWhileDragging;

final _i5.Radius radius;

final _i5.Radius radiusWhileDragging;

final _i65.ScrollNotificationPredicate notificationPredicate;

final _i95.ScrollbarOrientation scrollbarOrientation;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoScrollbar
(); } 
 }
class $CupertinoTabBar extends _i1.StatelessWidget {$CupertinoTabBar(this.items, {this.key, this.onTap, this.currentIndex, this.backgroundColor, this.activeColor, this.inactiveColor, this.iconSize, this.height, this.border, });

final _i2.Key key;

final List<_i106.BottomNavigationBarItem> items;

final _i44.ValueChanged<int> onTap;

final int currentIndex;

final _i5.Color backgroundColor;

final _i5.Color activeColor;

final _i5.Color inactiveColor;

final double iconSize;

final double height;

final _i9.Border border;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoTabBar
(); } 
 }
class $CupertinoCheckbox extends _i1.StatelessWidget {$CupertinoCheckbox(this.value, this.onChanged, {this.key, this.tristate, this.activeColor, this.inactiveColor, this.checkColor, this.focusColor, this.focusNode, this.autofocus, this.side, this.shape, });

final _i2.Key key;

final bool value;

final bool tristate;

final _i44.ValueChanged<bool> onChanged;

final _i5.Color activeColor;

final _i5.Color inactiveColor;

final _i5.Color checkColor;

final _i5.Color focusColor;

final _i43.FocusNode focusNode;

final bool autofocus;

final _i94.BorderSide side;

final _i94.OutlinedBorder shape;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoCheckbox
(); } 
 }
class $CupertinoContextMenu extends _i1.StatelessWidget {$CupertinoContextMenu(this.actions, this.child, {this.key, this.enableHapticFeedback, });

final _i2.Key key;

final List<_i3.Widget> actions;

final _i3.Widget child;

final bool enableHapticFeedback;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoContextMenu
(); } 
 }
class $CupertinoContextMenuAction extends _i1.StatelessWidget {$CupertinoContextMenuAction(this.child, {this.key, this.isDefaultAction, this.isDestructiveAction, this.onPressed, this.trailingIcon, });

final _i2.Key key;

final _i3.Widget child;

final bool isDefaultAction;

final bool isDestructiveAction;

final _i5.VoidCallback onPressed;

final _i107.IconData trailingIcon;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoContextMenuAction
(); } 
 }
class $CupertinoDatePicker extends _i1.StatelessWidget {$CupertinoDatePicker(this.onDateTimeChanged, {this.key, this.mode, this.initialDateTime, this.minimumDate, this.maximumDate, this.minimumYear, this.maximumYear, this.minuteInterval, this.use24hFormat, this.dateOrder, this.backgroundColor, this.showDayOfWeek, this.itemExtent, this.selectionOverlayBuilder, });

final _i2.Key key;

final _i108.CupertinoDatePickerMode mode;

final _i44.ValueChanged<DateTime> onDateTimeChanged;

final DateTime initialDateTime;

final DateTime minimumDate;

final DateTime maximumDate;

final int minimumYear;

final int maximumYear;

final int minuteInterval;

final bool use24hFormat;

final _i109.DatePickerDateOrder dateOrder;

final _i5.Color backgroundColor;

final bool showDayOfWeek;

final double itemExtent;

final _i108.SelectionOverlayBuilder selectionOverlayBuilder;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoDatePicker
(); } 
 }
class $CupertinoTimerPicker extends _i1.StatelessWidget {$CupertinoTimerPicker(this.onTimerDurationChanged, {this.key, this.mode, this.initialTimerDuration, this.minuteInterval, this.secondInterval, this.alignment, this.backgroundColor, this.itemExtent, this.selectionOverlayBuilder, });

final _i2.Key key;

final _i108.CupertinoTimerPickerMode mode;

final Duration initialTimerDuration;

final int minuteInterval;

final int secondInterval;

final _i11.AlignmentGeometry alignment;

final _i5.Color backgroundColor;

final double itemExtent;

final _i44.ValueChanged<Duration> onTimerDurationChanged;

final _i108.SelectionOverlayBuilder selectionOverlayBuilder;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoTimerPicker
(); } 
 }
class $CupertinoPicker extends _i1.StatelessWidget {$CupertinoPicker(this.itemExtent, this.onSelectedItemChanged, this.children, {this.key, this.diameterRatio, this.backgroundColor, this.offAxisFraction, this.useMagnifier, this.magnification, this.scrollController, this.squeeze, this.selectionOverlay, this.looping, });

final _i2.Key key;

final double diameterRatio;

final _i5.Color backgroundColor;

final double offAxisFraction;

final bool useMagnifier;

final double magnification;

final _i110.FixedExtentScrollController scrollController;

final double squeeze;

final double itemExtent;

final _i44.ValueChanged<int> onSelectedItemChanged;

final List<_i3.Widget> children;

final _i3.Widget selectionOverlay;

final bool looping;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoPicker
(); } 
 }
class $CupertinoPickerDefaultSelectionOverlay extends _i1.StatelessWidget {$CupertinoPickerDefaultSelectionOverlay({this.key, this.background, this.capStartEdge, this.capEndEdge, });

final _i2.Key key;

final _i5.Color background;

final bool capStartEdge;

final bool capEndEdge;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoPickerDefaultSelectionOverlay
(); } 
 }
class $CupertinoAlertDialog extends _i1.StatelessWidget {$CupertinoAlertDialog({this.key, this.title, this.content, this.actions, this.scrollController, this.actionScrollController, this.insetAnimationDuration, this.insetAnimationCurve, });

final _i2.Key key;

final _i3.Widget title;

final _i3.Widget content;

final List<_i3.Widget> actions;

final _i52.ScrollController scrollController;

final _i52.ScrollController actionScrollController;

final Duration insetAnimationDuration;

final _i77.Curve insetAnimationCurve;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoAlertDialog
(); } 
 }
class $CupertinoPopupSurface extends _i1.StatelessWidget {$CupertinoPopupSurface({this.key, this.isSurfacePainted, this.child, });

final _i2.Key key;

final bool isSurfacePainted;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoPopupSurface
(); } 
 }
class $CupertinoActionSheet extends _i1.StatelessWidget {$CupertinoActionSheet({this.key, this.title, this.message, this.actions, this.messageScrollController, this.actionScrollController, this.cancelButton, });

final _i2.Key key;

final _i3.Widget title;

final _i3.Widget message;

final List<_i3.Widget> actions;

final _i52.ScrollController messageScrollController;

final _i52.ScrollController actionScrollController;

final _i3.Widget cancelButton;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoActionSheet
(); } 
 }
class $CupertinoActionSheetAction extends _i1.StatelessWidget {$CupertinoActionSheetAction(this.onPressed, this.child, {this.key, this.isDefaultAction, this.isDestructiveAction, });

final _i2.Key key;

final _i5.VoidCallback onPressed;

final bool isDefaultAction;

final bool isDestructiveAction;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoActionSheetAction
(); } 
 }
class $CupertinoDialogAction extends _i1.StatelessWidget {$CupertinoDialogAction(this.child, {this.key, this.onPressed, this.isDefaultAction, this.isDestructiveAction, this.textStyle, });

final _i2.Key key;

final _i5.VoidCallback onPressed;

final bool isDefaultAction;

final bool isDestructiveAction;

final _i38.TextStyle textStyle;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoDialogAction
(); } 
 }
class $CupertinoFormRow extends _i1.StatelessWidget {$CupertinoFormRow(this.child, {this.key, this.prefix, this.padding, this.helper, this.error, });

final _i2.Key key;

final _i3.Widget child;

final _i3.Widget prefix;

final _i14.EdgeInsetsGeometry padding;

final _i3.Widget helper;

final _i3.Widget error;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoFormRow
(); } 
 }
class $CupertinoFormSection extends _i1.StatelessWidget {$CupertinoFormSection(this.children, {this.key, this.header, this.footer, this.margin, this.backgroundColor, this.decoration, this.clipBehavior, });

final _i2.Key key;

final List<_i3.Widget> children;

final _i3.Widget header;

final _i3.Widget footer;

final _i14.EdgeInsetsGeometry margin;

final _i5.Color backgroundColor;

final _i111.BoxDecoration decoration;

final _i5.Clip clipBehavior;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoFormSection
(); } 
 }
class $CupertinoListSection extends _i1.StatelessWidget {$CupertinoListSection({this.key, this.children, this.header, this.footer, this.margin, this.backgroundColor, this.decoration, this.clipBehavior, this.dividerMargin, this.additionalDividerMargin, this.topMargin, this.hasLeading, this.separatorColor, });

final _i2.Key key;

final List<_i3.Widget> children;

final _i3.Widget header;

final _i3.Widget footer;

final _i14.EdgeInsetsGeometry margin;

final _i5.Color backgroundColor;

final _i111.BoxDecoration decoration;

final _i5.Clip clipBehavior;

final double dividerMargin;

final double additionalDividerMargin;

final double topMargin;

final bool hasLeading;

final _i5.Color separatorColor;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoListSection
(); } 
 }
class $CupertinoListTile extends _i1.StatelessWidget {$CupertinoListTile(this.title, {this.key, this.subtitle, this.additionalInfo, this.leading, this.trailing, this.onTap, this.backgroundColor, this.backgroundColorActivated, this.padding, this.leadingSize, this.leadingToTitle, });

final _i2.Key key;

final _i3.Widget title;

final _i3.Widget subtitle;

final _i3.Widget additionalInfo;

final _i3.Widget leading;

final _i3.Widget trailing;

final _i100.FutureOr<void> Function() onTap;

final _i5.Color backgroundColor;

final _i5.Color backgroundColorActivated;

final _i14.EdgeInsetsGeometry padding;

final double leadingSize;

final double leadingToTitle;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoListTile
(); } 
 }
class $CupertinoListTileChevron extends _i1.StatelessWidget {$CupertinoListTileChevron({this.key});

final _i2.Key key;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoListTileChevron
(); } 
 }
class $CupertinoTextMagnifier extends _i1.StatelessWidget {$CupertinoTextMagnifier(this.controller, this.magnifierInfo, {this.key, this.animationCurve, this.dragResistance, this.hideBelowThreshold, this.horizontalScreenEdgePadding, });

final _i2.Key key;

final _i77.Curve animationCurve;

final _i71.MagnifierController controller;

final double dragResistance;

final double hideBelowThreshold;

final double horizontalScreenEdgePadding;

final _i68.ValueNotifier<_i71.MagnifierInfo> magnifierInfo;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoTextMagnifier
(); } 
 }
class $CupertinoMagnifier extends _i1.StatelessWidget {$CupertinoMagnifier({this.key, this.size, this.borderRadius, this.additionalFocalPointOffset, this.shadows, this.clipBehavior, this.borderSide, this.inOutAnimation, });

final _i2.Key key;

final _i5.Size size;

final _i8.BorderRadius borderRadius;

final _i5.Offset additionalFocalPointOffset;

final List<_i112.BoxShadow> shadows;

final _i5.Clip clipBehavior;

final _i94.BorderSide borderSide;

final _i28.Animation<double> inOutAnimation;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoMagnifier
(); } 
 }
class $CupertinoNavigationBar extends _i1.StatelessWidget {$CupertinoNavigationBar({this.key, this.leading, this.automaticallyImplyLeading, this.automaticallyImplyMiddle, this.previousPageTitle, this.middle, this.trailing, this.border, this.backgroundColor, this.brightness, this.padding, this.transitionBetweenRoutes, this.heroTag, });

final _i2.Key key;

final _i3.Widget leading;

final bool automaticallyImplyLeading;

final bool automaticallyImplyMiddle;

final String previousPageTitle;

final _i3.Widget middle;

final _i3.Widget trailing;

final _i9.Border border;

final _i5.Color backgroundColor;

final _i5.Brightness brightness;

final _i14.EdgeInsetsDirectional padding;

final bool transitionBetweenRoutes;

final Object heroTag;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoNavigationBar
(); } 
 }
class $CupertinoSliverNavigationBar extends _i1.StatelessWidget {$CupertinoSliverNavigationBar({this.key, this.largeTitle, this.leading, this.automaticallyImplyLeading, this.automaticallyImplyTitle, this.alwaysShowMiddle, this.previousPageTitle, this.middle, this.trailing, this.border, this.backgroundColor, this.brightness, this.padding, this.transitionBetweenRoutes, this.heroTag, this.stretch, });

final _i2.Key key;

final _i3.Widget largeTitle;

final _i3.Widget leading;

final bool automaticallyImplyLeading;

final bool automaticallyImplyTitle;

final bool alwaysShowMiddle;

final String previousPageTitle;

final _i3.Widget middle;

final _i3.Widget trailing;

final _i9.Border border;

final _i5.Color backgroundColor;

final _i5.Brightness brightness;

final _i14.EdgeInsetsDirectional padding;

final bool transitionBetweenRoutes;

final Object heroTag;

final bool stretch;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoSliverNavigationBar
(); } 
 }
class $CupertinoNavigationBarBackButton extends _i1.StatelessWidget {$CupertinoNavigationBarBackButton({this.key, this.color, this.previousPageTitle, this.onPressed, });

final _i2.Key key;

final _i5.Color color;

final String previousPageTitle;

final _i5.VoidCallback onPressed;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoNavigationBarBackButton
(); } 
 }
class $CupertinoPageScaffold extends _i1.StatelessWidget {$CupertinoPageScaffold(this.child, {this.key, this.navigationBar, this.backgroundColor, this.resizeToAvoidBottomInset, });

final _i2.Key key;

final _i113.ObstructingPreferredSizeWidget navigationBar;

final _i5.Color backgroundColor;

final bool resizeToAvoidBottomInset;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoPageScaffold
(); } 
 }
class $CupertinoRadio extends _i1.StatelessWidget {$CupertinoRadio(this.value, this.groupValue, this.onChanged, {this.key, this.mouseCursor, this.toggleable, this.activeColor, this.inactiveColor, this.fillColor, this.focusColor, this.focusNode, this.autofocus, this.useCheckmarkStyle, });

final _i2.Key key;

final T value;

final T groupValue;

final _i44.ValueChanged<T> onChanged;

final _i32.MouseCursor mouseCursor;

final bool toggleable;

final _i5.Color activeColor;

final _i5.Color inactiveColor;

final _i5.Color fillColor;

final _i5.Color focusColor;

final _i43.FocusNode focusNode;

final bool autofocus;

final bool useCheckmarkStyle;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoRadio
(); } 
 }
class $CupertinoSliverRefreshControl extends _i1.StatelessWidget {$CupertinoSliverRefreshControl({this.key, this.refreshTriggerPullDistance, this.refreshIndicatorExtent, this.builder, this.onRefresh, });

final _i2.Key key;

final double refreshTriggerPullDistance;

final double refreshIndicatorExtent;

final _i114.RefreshControlIndicatorBuilder builder;

final _i114.RefreshCallback onRefresh;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoSliverRefreshControl
(); } 
 }
class $CupertinoSearchTextField extends _i1.StatelessWidget {$CupertinoSearchTextField({this.key, this.controller, this.onChanged, this.onSubmitted, this.style, this.placeholder, this.placeholderStyle, this.decoration, this.backgroundColor, this.borderRadius, this.keyboardType, this.padding, this.itemColor, this.itemSize, this.prefixInsets, this.prefixIcon, this.suffixInsets, this.suffixIcon, this.suffixMode, this.onSuffixTap, this.restorationId, this.focusNode, this.smartQuotesType, this.smartDashesType, this.enableIMEPersonalizedLearning, this.autofocus, this.onTap, this.autocorrect, this.enabled, });

final _i2.Key key;

final _i80.TextEditingController controller;

final _i44.ValueChanged<String> onChanged;

final _i44.ValueChanged<String> onSubmitted;

final _i38.TextStyle style;

final String placeholder;

final _i38.TextStyle placeholderStyle;

final _i111.BoxDecoration decoration;

final _i5.Color backgroundColor;

final _i8.BorderRadius borderRadius;

final _i81.TextInputType keyboardType;

final _i14.EdgeInsetsGeometry padding;

final _i5.Color itemColor;

final double itemSize;

final _i14.EdgeInsetsGeometry prefixInsets;

final _i3.Widget prefixIcon;

final _i14.EdgeInsetsGeometry suffixInsets;

final _i115.Icon suffixIcon;

final _i116.OverlayVisibilityMode suffixMode;

final _i5.VoidCallback onSuffixTap;

final String restorationId;

final _i43.FocusNode focusNode;

final _i81.SmartQuotesType smartQuotesType;

final _i81.SmartDashesType smartDashesType;

final bool enableIMEPersonalizedLearning;

final bool autofocus;

final _i5.VoidCallback onTap;

final bool autocorrect;

final bool enabled;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoSearchTextField
(); } 
 }
class $CupertinoTextField extends _i1.StatelessWidget {$CupertinoTextField({this.key, this.groupId, this.controller, this.focusNode, this.undoController, this.decoration, this.padding, this.placeholder, this.placeholderStyle, this.prefix, this.prefixMode, this.suffix, this.suffixMode, this.clearButtonMode, this.clearButtonSemanticLabel, this.keyboardType, this.textInputAction, this.textCapitalization, this.style, this.strutStyle, this.textAlign, this.textAlignVertical, this.textDirection, this.readOnly, this.toolbarOptions, this.showCursor, this.autofocus, this.obscuringCharacter, this.obscureText, this.autocorrect, this.smartDashesType, this.smartQuotesType, this.enableSuggestions, this.maxLines, this.minLines, this.expands, this.maxLength, this.maxLengthEnforcement, this.onChanged, this.onEditingComplete, this.onSubmitted, this.onTapOutside, this.inputFormatters, this.enabled, this.cursorWidth, this.cursorHeight, this.cursorRadius, this.cursorOpacityAnimates, this.cursorColor, this.selectionHeightStyle, this.selectionWidthStyle, this.keyboardAppearance, this.scrollPadding, this.dragStartBehavior, this.enableInteractiveSelection, this.selectionControls, this.onTap, this.scrollController, this.scrollPhysics, this.autofillHints, this.contentInsertionConfiguration, this.clipBehavior, this.restorationId, this.scribbleEnabled, this.enableIMEPersonalizedLearning, this.contextMenuBuilder, this.spellCheckConfiguration, this.magnifierConfiguration, });

final _i2.Key key;

final Object groupId;

final _i80.TextEditingController controller;

final _i43.FocusNode focusNode;

final _i86.UndoHistoryController undoController;

final _i111.BoxDecoration decoration;

final _i14.EdgeInsetsGeometry padding;

final String placeholder;

final _i38.TextStyle placeholderStyle;

final _i3.Widget prefix;

final _i116.OverlayVisibilityMode prefixMode;

final _i3.Widget suffix;

final _i116.OverlayVisibilityMode suffixMode;

final _i116.OverlayVisibilityMode clearButtonMode;

final String clearButtonSemanticLabel;

final _i81.TextInputType keyboardType;

final _i81.TextInputAction textInputAction;

final _i81.TextCapitalization textCapitalization;

final _i38.TextStyle style;

final _i26.StrutStyle strutStyle;

final _i5.TextAlign textAlign;

final _i11.TextAlignVertical textAlignVertical;

final _i5.TextDirection textDirection;

final bool readOnly;

final _i80.ToolbarOptions toolbarOptions;

final bool showCursor;

final bool autofocus;

final String obscuringCharacter;

final bool obscureText;

final bool autocorrect;

final _i81.SmartDashesType smartDashesType;

final _i81.SmartQuotesType smartQuotesType;

final bool enableSuggestions;

final int maxLines;

final int minLines;

final bool expands;

final int maxLength;

final _i83.MaxLengthEnforcement maxLengthEnforcement;

final _i44.ValueChanged<String> onChanged;

final _i5.VoidCallback onEditingComplete;

final _i44.ValueChanged<String> onSubmitted;

final _i82.TapRegionCallback onTapOutside;

final List<_i83.TextInputFormatter> inputFormatters;

final bool enabled;

final double cursorWidth;

final double cursorHeight;

final _i5.Radius cursorRadius;

final bool cursorOpacityAnimates;

final _i5.Color cursorColor;

final _i5.BoxHeightStyle selectionHeightStyle;

final _i5.BoxWidthStyle selectionWidthStyle;

final _i5.Brightness keyboardAppearance;

final _i14.EdgeInsets scrollPadding;

final _i56.DragStartBehavior dragStartBehavior;

final bool enableInteractiveSelection;

final _i70.TextSelectionControls selectionControls;

final _i58.GestureTapCallback onTap;

final _i52.ScrollController scrollController;

final _i53.ScrollPhysics scrollPhysics;

final Iterable<String> autofillHints;

final _i80.ContentInsertionConfiguration contentInsertionConfiguration;

final _i5.Clip clipBehavior;

final String restorationId;

final bool scribbleEnabled;

final bool enableIMEPersonalizedLearning;

final _i80.EditableTextContextMenuBuilder contextMenuBuilder;

final _i85.SpellCheckConfiguration spellCheckConfiguration;

final _i71.TextMagnifierConfiguration magnifierConfiguration;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoTextField
(); } 
 }
class $CupertinoSpellCheckSuggestionsToolbar extends _i1.StatelessWidget {$CupertinoSpellCheckSuggestionsToolbar(this.anchors, this.buttonItems, {this.key, });

final _i2.Key key;

final _i104.TextSelectionToolbarAnchors anchors;

final List<_i117.ContextMenuButtonItem> buttonItems;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoSpellCheckSuggestionsToolbar
(); } 
 }
class $CupertinoSegmentedControl extends _i1.StatelessWidget {$CupertinoSegmentedControl(this.children, this.onValueChanged, {this.key, this.groupValue, this.unselectedColor, this.selectedColor, this.borderColor, this.pressedColor, this.padding, });

final _i2.Key key;

final Map<T,_i3.Widget> children;

final _i44.ValueChanged<T> onValueChanged;

final T groupValue;

final _i5.Color unselectedColor;

final _i5.Color selectedColor;

final _i5.Color borderColor;

final _i5.Color pressedColor;

final _i14.EdgeInsetsGeometry padding;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoSegmentedControl
(); } 
 }
class $CupertinoSlider extends _i1.StatelessWidget {$CupertinoSlider(this.value, this.onChanged, {this.key, this.onChangeStart, this.onChangeEnd, this.min, this.max, this.divisions, this.activeColor, this.thumbColor, });

final _i2.Key key;

final double value;

final _i44.ValueChanged<double> onChanged;

final _i44.ValueChanged<double> onChangeStart;

final _i44.ValueChanged<double> onChangeEnd;

final double min;

final double max;

final int divisions;

final _i5.Color activeColor;

final _i5.Color thumbColor;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoSlider
(); } 
 }
class $CupertinoSlidingSegmentedControl extends _i1.StatelessWidget {$CupertinoSlidingSegmentedControl(this.children, this.onValueChanged, {this.key, this.groupValue, this.thumbColor, this.padding, this.backgroundColor, });

final _i2.Key key;

final Map<T,_i3.Widget> children;

final _i44.ValueChanged<T> onValueChanged;

final T groupValue;

final _i5.Color thumbColor;

final _i14.EdgeInsetsGeometry padding;

final _i5.Color backgroundColor;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoSlidingSegmentedControl
(); } 
 }
class $CupertinoSwitch extends _i1.StatelessWidget {$CupertinoSwitch(this.value, this.onChanged, {this.key, this.activeColor, this.trackColor, this.thumbColor, this.applyTheme, this.focusColor, this.onLabelColor, this.offLabelColor, this.focusNode, this.onFocusChange, this.autofocus, this.dragStartBehavior, });

final _i2.Key key;

final bool value;

final _i44.ValueChanged<bool> onChanged;

final _i5.Color activeColor;

final _i5.Color trackColor;

final _i5.Color thumbColor;

final bool applyTheme;

final _i5.Color focusColor;

final _i5.Color onLabelColor;

final _i5.Color offLabelColor;

final _i43.FocusNode focusNode;

final _i44.ValueChanged<bool> onFocusChange;

final bool autofocus;

final _i56.DragStartBehavior dragStartBehavior;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoSwitch
(); } 
 }
class $CupertinoTabScaffold extends _i1.StatelessWidget {$CupertinoTabScaffold(this.tabBar, this.tabBuilder, {this.key, this.controller, this.backgroundColor, this.resizeToAvoidBottomInset, this.restorationId, });

final _i2.Key key;

final _i118.CupertinoTabBar tabBar;

final _i3.IndexedWidgetBuilder tabBuilder;

final _i119.CupertinoTabController controller;

final _i5.Color backgroundColor;

final bool resizeToAvoidBottomInset;

final String restorationId;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoTabScaffold
(); } 
 }
class $CupertinoTabView extends _i1.StatelessWidget {$CupertinoTabView({this.key, this.builder, this.navigatorKey, this.defaultTitle, this.routes, this.onGenerateRoute, this.onUnknownRoute, this.navigatorObservers, this.restorationScopeId, });

final _i2.Key key;

final _i3.WidgetBuilder builder;

final _i3.GlobalKey<_i35.NavigatorState> navigatorKey;

final String defaultTitle;

final Map<String,_i3.WidgetBuilder> routes;

final _i35.RouteFactory onGenerateRoute;

final _i35.RouteFactory onUnknownRoute;

final List<_i35.NavigatorObserver> navigatorObservers;

final String restorationScopeId;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoTabView
(); } 
 }
class $CupertinoTextFormFieldRow extends _i1.StatelessWidget {$CupertinoTextFormFieldRow({this.key, this.prefix, this.padding, this.controller, this.initialValue, this.focusNode, this.decoration, this.keyboardType, this.textCapitalization, this.textInputAction, this.style, this.strutStyle, this.textDirection, this.textAlign, this.textAlignVertical, this.autofocus, this.readOnly, this.toolbarOptions, this.showCursor, this.obscuringCharacter, this.obscureText, this.autocorrect, this.smartDashesType, this.smartQuotesType, this.enableSuggestions, this.maxLines, this.minLines, this.expands, this.maxLength, this.onChanged, this.onTap, this.onEditingComplete, this.onFieldSubmitted, this.onSaved, this.validator, this.inputFormatters, this.enabled, this.cursorWidth, this.cursorHeight, this.cursorColor, this.keyboardAppearance, this.scrollPadding, this.enableInteractiveSelection, this.selectionControls, this.scrollPhysics, this.autofillHints, this.autovalidateMode, this.placeholder, this.placeholderStyle, this.contextMenuBuilder, this.restorationId, });

final _i2.Key key;

final _i3.Widget prefix;

final _i14.EdgeInsetsGeometry padding;

final _i80.TextEditingController controller;

final String initialValue;

final _i43.FocusNode focusNode;

final _i111.BoxDecoration decoration;

final _i81.TextInputType keyboardType;

final _i81.TextCapitalization textCapitalization;

final _i81.TextInputAction textInputAction;

final _i38.TextStyle style;

final _i26.StrutStyle strutStyle;

final _i5.TextDirection textDirection;

final _i5.TextAlign textAlign;

final _i11.TextAlignVertical textAlignVertical;

final bool autofocus;

final bool readOnly;

final _i80.ToolbarOptions toolbarOptions;

final bool showCursor;

final String obscuringCharacter;

final bool obscureText;

final bool autocorrect;

final _i81.SmartDashesType smartDashesType;

final _i81.SmartQuotesType smartQuotesType;

final bool enableSuggestions;

final int maxLines;

final int minLines;

final bool expands;

final int maxLength;

final _i44.ValueChanged<String> onChanged;

final _i58.GestureTapCallback onTap;

final _i5.VoidCallback onEditingComplete;

final _i44.ValueChanged<String> onFieldSubmitted;

final _i120.FormFieldSetter<String> onSaved;

final _i120.FormFieldValidator<String> validator;

final List<_i83.TextInputFormatter> inputFormatters;

final bool enabled;

final double cursorWidth;

final double cursorHeight;

final _i5.Color cursorColor;

final _i5.Brightness keyboardAppearance;

final _i14.EdgeInsets scrollPadding;

final bool enableInteractiveSelection;

final _i70.TextSelectionControls selectionControls;

final _i53.ScrollPhysics scrollPhysics;

final Iterable<String> autofillHints;

final _i120.AutovalidateMode autovalidateMode;

final String placeholder;

final _i38.TextStyle placeholderStyle;

final _i80.EditableTextContextMenuBuilder contextMenuBuilder;

final String restorationId;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CupertinoTextFormFieldRow
(); } 
 }
class $RenderObjectToWidgetAdapter extends _i1.StatelessWidget {$RenderObjectToWidgetAdapter(this.container, {this.child, this.debugShortDescription, });

final _i3.Widget child;

final _i75.RenderObjectWithChildMixin<T> container;

final String debugShortDescription;

_i1.Widget build(_i1.BuildContext context) { return
_i4.RenderObjectToWidgetAdapter
(); } 
 }
class $AnimatedCrossFade extends _i1.StatelessWidget {$AnimatedCrossFade(this.firstChild, this.secondChild, this.crossFadeState, this.duration, {this.key, this.firstCurve, this.secondCurve, this.sizeCurve, this.alignment, this.reverseDuration, this.layoutBuilder, this.excludeBottomFocus, });

final _i2.Key key;

final _i3.Widget firstChild;

final _i3.Widget secondChild;

final _i77.Curve firstCurve;

final _i77.Curve secondCurve;

final _i77.Curve sizeCurve;

final _i11.AlignmentGeometry alignment;

final _i121.CrossFadeState crossFadeState;

final Duration duration;

final Duration reverseDuration;

final _i121.AnimatedCrossFadeBuilder layoutBuilder;

final bool excludeBottomFocus;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AnimatedCrossFade
(); } 
 }
class $AnimatedSize extends _i1.StatelessWidget {$AnimatedSize(this.duration, {this.key, this.child, this.alignment, this.curve, this.reverseDuration, this.clipBehavior, this.onEnd, });

final _i2.Key key;

final _i3.Widget child;

final _i11.AlignmentGeometry alignment;

final _i77.Curve curve;

final Duration duration;

final Duration reverseDuration;

final _i5.Clip clipBehavior;

final _i5.VoidCallback onEnd;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AnimatedSize
(); } 
 }
class $AnimatedList extends _i1.StatelessWidget {$AnimatedList(this.itemBuilder, {this.key, this.initialItemCount, this.scrollDirection, this.reverse, this.controller, this.primary, this.physics, this.shrinkWrap, this.padding, this.clipBehavior, });

final _i2.Key key;

final _i122.AnimatedItemBuilder itemBuilder;

final int initialItemCount;

final _i18.Axis scrollDirection;

final bool reverse;

final _i52.ScrollController controller;

final bool primary;

final _i53.ScrollPhysics physics;

final bool shrinkWrap;

final _i14.EdgeInsetsGeometry padding;

final _i5.Clip clipBehavior;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AnimatedList
(); } 
 }
class $AnimatedGrid extends _i1.StatelessWidget {$AnimatedGrid(this.itemBuilder, this.gridDelegate, {this.key, this.initialItemCount, this.scrollDirection, this.reverse, this.controller, this.primary, this.physics, this.padding, this.clipBehavior, });

final _i2.Key key;

final _i122.AnimatedItemBuilder itemBuilder;

final _i90.SliverGridDelegate gridDelegate;

final int initialItemCount;

final _i18.Axis scrollDirection;

final bool reverse;

final _i52.ScrollController controller;

final bool primary;

final _i53.ScrollPhysics physics;

final _i14.EdgeInsetsGeometry padding;

final _i5.Clip clipBehavior;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AnimatedGrid
(); } 
 }
class $SliverAnimatedList extends _i1.StatelessWidget {$SliverAnimatedList(this.itemBuilder, {this.key, this.findChildIndexCallback, this.initialItemCount, });

final _i2.Key key;

final _i122.AnimatedItemBuilder itemBuilder;

final _i88.ChildIndexGetter findChildIndexCallback;

final int initialItemCount;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SliverAnimatedList
(); } 
 }
class $SliverAnimatedGrid extends _i1.StatelessWidget {$SliverAnimatedGrid(this.itemBuilder, this.gridDelegate, {this.key, this.findChildIndexCallback, this.initialItemCount, });

final _i2.Key key;

final _i122.AnimatedItemBuilder itemBuilder;

final _i90.SliverGridDelegate gridDelegate;

final _i88.ChildIndexGetter findChildIndexCallback;

final int initialItemCount;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SliverAnimatedGrid
(); } 
 }
class $CustomScrollView extends _i1.StatelessWidget {$CustomScrollView({this.key, this.scrollDirection, this.reverse, this.controller, this.primary, this.physics, this.scrollBehavior, this.shrinkWrap, this.center, this.anchor, this.cacheExtent, this.slivers, this.semanticChildCount, this.dragStartBehavior, this.keyboardDismissBehavior, this.restorationId, this.clipBehavior, this.hitTestBehavior, });

final _i2.Key key;

final _i18.Axis scrollDirection;

final bool reverse;

final _i52.ScrollController controller;

final bool primary;

final _i53.ScrollPhysics physics;

final _i57.ScrollBehavior scrollBehavior;

final bool shrinkWrap;

final _i2.Key center;

final double anchor;

final double cacheExtent;

final List<_i3.Widget> slivers;

final int semanticChildCount;

final _i56.DragStartBehavior dragStartBehavior;

final _i123.ScrollViewKeyboardDismissBehavior keyboardDismissBehavior;

final String restorationId;

final _i5.Clip clipBehavior;

final _i6.HitTestBehavior hitTestBehavior;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CustomScrollView
(); } 
 }
class $ListView extends _i1.StatelessWidget {$ListView({this.key, this.scrollDirection, this.reverse, this.controller, this.primary, this.physics, this.shrinkWrap, this.padding, this.itemExtent, this.itemExtentBuilder, this.prototypeItem, this.addAutomaticKeepAlives, this.addRepaintBoundaries, this.addSemanticIndexes, this.cacheExtent, this.children, this.semanticChildCount, this.dragStartBehavior, this.keyboardDismissBehavior, this.restorationId, this.clipBehavior, this.hitTestBehavior, });

final _i2.Key key;

final _i18.Axis scrollDirection;

final bool reverse;

final _i52.ScrollController controller;

final bool primary;

final _i53.ScrollPhysics physics;

final bool shrinkWrap;

final _i14.EdgeInsetsGeometry padding;

final double itemExtent;

final _i89.ItemExtentBuilder itemExtentBuilder;

final _i3.Widget prototypeItem;

final bool addAutomaticKeepAlives;

final bool addRepaintBoundaries;

final bool addSemanticIndexes;

final double cacheExtent;

final List<_i3.Widget> children;

final int semanticChildCount;

final _i56.DragStartBehavior dragStartBehavior;

final _i123.ScrollViewKeyboardDismissBehavior keyboardDismissBehavior;

final String restorationId;

final _i5.Clip clipBehavior;

final _i6.HitTestBehavior hitTestBehavior;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ListView
(); } 
 }
class $GridView extends _i1.StatelessWidget {$GridView(this.gridDelegate, {this.key, this.scrollDirection, this.reverse, this.controller, this.primary, this.physics, this.shrinkWrap, this.padding, this.addAutomaticKeepAlives, this.addRepaintBoundaries, this.addSemanticIndexes, this.cacheExtent, this.children, this.semanticChildCount, this.dragStartBehavior, this.clipBehavior, this.keyboardDismissBehavior, this.restorationId, this.hitTestBehavior, });

final _i2.Key key;

final _i18.Axis scrollDirection;

final bool reverse;

final _i52.ScrollController controller;

final bool primary;

final _i53.ScrollPhysics physics;

final bool shrinkWrap;

final _i14.EdgeInsetsGeometry padding;

final _i90.SliverGridDelegate gridDelegate;

final bool addAutomaticKeepAlives;

final bool addRepaintBoundaries;

final bool addSemanticIndexes;

final double cacheExtent;

final List<_i3.Widget> children;

final int semanticChildCount;

final _i56.DragStartBehavior dragStartBehavior;

final _i5.Clip clipBehavior;

final _i123.ScrollViewKeyboardDismissBehavior keyboardDismissBehavior;

final String restorationId;

final _i6.HitTestBehavior hitTestBehavior;

_i1.Widget build(_i1.BuildContext context) { return
_i4.GridView
(); } 
 }
class $SliverPrototypeExtentList extends _i1.StatelessWidget {$SliverPrototypeExtentList(this.delegate, this.prototypeItem, {this.key, });

final _i2.Key key;

final _i88.SliverChildDelegate delegate;

final _i3.Widget prototypeItem;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SliverPrototypeExtentList
(); } 
 }
class $AnimatedSwitcher extends _i1.StatelessWidget {$AnimatedSwitcher(this.duration, {this.key, this.child, this.reverseDuration, this.switchInCurve, this.switchOutCurve, this.transitionBuilder, this.layoutBuilder, });

final _i2.Key key;

final _i3.Widget child;

final Duration duration;

final Duration reverseDuration;

final _i77.Curve switchInCurve;

final _i77.Curve switchOutCurve;

final _i124.AnimatedSwitcherTransitionBuilder transitionBuilder;

final _i124.AnimatedSwitcherLayoutBuilder layoutBuilder;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AnimatedSwitcher
(); } 
 }
class $AnnotatedRegion extends _i1.StatelessWidget {$AnnotatedRegion(this.child, this.value, {this.key, this.sized, });

final _i2.Key key;

final _i3.Widget child;

final T value;

final bool sized;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AnnotatedRegion
(); } 
 }
class $StreamBuilder extends _i1.StatelessWidget {$StreamBuilder(this.stream, this.builder, {this.key, this.initialData, });

final _i2.Key key;

final T initialData;

final _i100.Stream<T> stream;

final _i125.AsyncWidgetBuilder<T> builder;

_i1.Widget build(_i1.BuildContext context) { return
_i4.StreamBuilder
(); } 
 }
class $FutureBuilder extends _i1.StatelessWidget {$FutureBuilder(this.future, this.builder, {this.key, this.initialData, });

final _i2.Key key;

final _i100.Future<T> future;

final T initialData;

final _i125.AsyncWidgetBuilder<T> builder;

_i1.Widget build(_i1.BuildContext context) { return
_i4.FutureBuilder
(); } 
 }
class $RawAutocomplete extends _i1.StatelessWidget {$RawAutocomplete(this.optionsViewBuilder, this.optionsBuilder, {this.key, this.optionsViewOpenDirection, this.displayStringForOption, this.fieldViewBuilder, this.focusNode, this.onSelected, this.textEditingController, this.initialValue, });

final _i2.Key key;

final _i126.AutocompleteOptionsViewBuilder<T> optionsViewBuilder;

final _i126.AutocompleteOptionsBuilder<T> optionsBuilder;

final _i126.OptionsViewOpenDirection optionsViewOpenDirection;

final _i126.AutocompleteOptionToString<T> displayStringForOption;

final _i126.AutocompleteFieldViewBuilder fieldViewBuilder;

final _i43.FocusNode focusNode;

final _i126.AutocompleteOnSelected<T> onSelected;

final _i80.TextEditingController textEditingController;

final _i81.TextEditingValue initialValue;

_i1.Widget build(_i1.BuildContext context) { return
_i4.RawAutocomplete
(); } 
 }
class $AutocompleteHighlightedOption extends _i1.StatelessWidget {$AutocompleteHighlightedOption(this.highlightIndexNotifier, this.child, {this.key, });

final _i2.Key key;

final _i68.ValueNotifier<int> highlightIndexNotifier;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AutocompleteHighlightedOption
(); } 
 }
class $ColorFiltered extends _i1.StatelessWidget {$ColorFiltered(this.colorFilter, {this.child, this.key, });

final _i5.ColorFilter colorFilter;

final _i3.Widget child;

final _i2.Key key;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ColorFiltered
(); } 
 }
class $DecoratedSliver extends _i1.StatelessWidget {$DecoratedSliver(this.decoration, {this.key, this.position, this.sliver, });

final _i2.Key key;

final _i67.Decoration decoration;

final _i6.DecorationPosition position;

final _i3.Widget sliver;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DecoratedSliver
(); } 
 }
class $Dismissible extends _i1.StatelessWidget {$Dismissible(this.key, this.child, {this.background, this.secondaryBackground, this.confirmDismiss, this.onResize, this.onUpdate, this.onDismissed, this.direction, this.resizeDuration, this.dismissThresholds, this.movementDuration, this.crossAxisEndOffset, this.dragStartBehavior, this.behavior, });

final _i2.Key key;

final _i3.Widget child;

final _i3.Widget background;

final _i3.Widget secondaryBackground;

final _i127.ConfirmDismissCallback confirmDismiss;

final _i5.VoidCallback onResize;

final _i127.DismissUpdateCallback onUpdate;

final _i127.DismissDirectionCallback onDismissed;

final _i127.DismissDirection direction;

final Duration resizeDuration;

final Map<_i127.DismissDirection,double> dismissThresholds;

final Duration movementDuration;

final double crossAxisEndOffset;

final _i56.DragStartBehavior dragStartBehavior;

final _i6.HitTestBehavior behavior;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Dismissible
(); } 
 }
class $Draggable extends _i1.StatelessWidget {$Draggable(this.child, this.feedback, {this.key, this.data, this.axis, this.childWhenDragging, this.feedbackOffset, this.dragAnchorStrategy, this.affinity, this.maxSimultaneousDrags, this.onDragStarted, this.onDragUpdate, this.onDraggableCanceled, this.onDragEnd, this.onDragCompleted, this.ignoringFeedbackSemantics, this.ignoringFeedbackPointer, this.rootOverlay, this.hitTestBehavior, this.allowedButtonsFilter, });

final _i2.Key key;

final _i3.Widget child;

final _i3.Widget feedback;

final T data;

final _i18.Axis axis;

final _i3.Widget childWhenDragging;

final _i5.Offset feedbackOffset;

final _i128.DragAnchorStrategy dragAnchorStrategy;

final _i18.Axis affinity;

final int maxSimultaneousDrags;

final _i5.VoidCallback onDragStarted;

final _i128.DragUpdateCallback onDragUpdate;

final _i128.DraggableCanceledCallback onDraggableCanceled;

final _i128.DragEndCallback onDragEnd;

final _i5.VoidCallback onDragCompleted;

final bool ignoringFeedbackSemantics;

final bool ignoringFeedbackPointer;

final bool rootOverlay;

final _i6.HitTestBehavior hitTestBehavior;

final _i56.AllowedButtonsFilter allowedButtonsFilter;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Draggable
(); } 
 }
class $LongPressDraggable extends _i1.StatelessWidget {$LongPressDraggable(this.child, this.feedback, {this.key, this.data, this.axis, this.childWhenDragging, this.feedbackOffset, this.dragAnchorStrategy, this.maxSimultaneousDrags, this.onDragStarted, this.onDragUpdate, this.onDraggableCanceled, this.onDragEnd, this.onDragCompleted, this.hapticFeedbackOnStart, this.ignoringFeedbackSemantics, this.ignoringFeedbackPointer, this.delay, this.allowedButtonsFilter, this.hitTestBehavior, this.rootOverlay, });

final _i2.Key key;

final _i3.Widget child;

final _i3.Widget feedback;

final T data;

final _i18.Axis axis;

final _i3.Widget childWhenDragging;

final _i5.Offset feedbackOffset;

final _i128.DragAnchorStrategy dragAnchorStrategy;

final int maxSimultaneousDrags;

final _i5.VoidCallback onDragStarted;

final _i128.DragUpdateCallback onDragUpdate;

final _i128.DraggableCanceledCallback onDraggableCanceled;

final _i128.DragEndCallback onDragEnd;

final _i5.VoidCallback onDragCompleted;

final bool hapticFeedbackOnStart;

final bool ignoringFeedbackSemantics;

final bool ignoringFeedbackPointer;

final Duration delay;

final _i56.AllowedButtonsFilter allowedButtonsFilter;

final _i6.HitTestBehavior hitTestBehavior;

final bool rootOverlay;

_i1.Widget build(_i1.BuildContext context) { return
_i4.LongPressDraggable
(); } 
 }
class $DragTarget extends _i1.StatelessWidget {$DragTarget(this.builder, {this.key, this.onWillAccept, this.onWillAcceptWithDetails, this.onAccept, this.onAcceptWithDetails, this.onLeave, this.onMove, this.hitTestBehavior, });

final _i2.Key key;

final _i128.DragTargetBuilder<T> builder;

final _i128.DragTargetWillAccept<T> onWillAccept;

final _i128.DragTargetWillAcceptWithDetails<T> onWillAcceptWithDetails;

final _i128.DragTargetAccept<T> onAccept;

final _i128.DragTargetAcceptWithDetails<T> onAcceptWithDetails;

final _i128.DragTargetLeave<T> onLeave;

final _i128.DragTargetMove<T> onMove;

final _i6.HitTestBehavior hitTestBehavior;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DragTarget
(); } 
 }
class $DraggableScrollableSheet extends _i1.StatelessWidget {$DraggableScrollableSheet(this.builder, {this.key, this.initialChildSize, this.minChildSize, this.maxChildSize, this.expand, this.snap, this.snapSizes, this.snapAnimationDuration, this.controller, this.shouldCloseOnMinExtent, });

final _i2.Key key;

final double initialChildSize;

final double minChildSize;

final double maxChildSize;

final bool expand;

final bool snap;

final List<double> snapSizes;

final Duration snapAnimationDuration;

final _i129.DraggableScrollableController controller;

final bool shouldCloseOnMinExtent;

final _i129.ScrollableWidgetBuilder builder;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DraggableScrollableSheet
(); } 
 }
class $DraggableScrollableActuator extends _i1.StatelessWidget {$DraggableScrollableActuator(this.child, {this.key, });

final _i2.Key key;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DraggableScrollableActuator
(); } 
 }
class $LayoutBuilder extends _i1.StatelessWidget {$LayoutBuilder(this.builder, {this.key, });

final _i2.Key key;

final _i3.Widget Function(_i3.BuildContext, _i17.BoxConstraints, ) builder;

_i1.Widget build(_i1.BuildContext context) { return
_i4.LayoutBuilder
(); } 
 }
class $DualTransitionBuilder extends _i1.StatelessWidget {$DualTransitionBuilder(this.animation, this.forwardBuilder, this.reverseBuilder, {this.key, this.child, });

final _i2.Key key;

final _i28.Animation<double> animation;

final _i130.AnimatedTransitionBuilder forwardBuilder;

final _i130.AnimatedTransitionBuilder reverseBuilder;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DualTransitionBuilder
(); } 
 }
class $FadeInImage extends _i1.StatelessWidget {$FadeInImage(this.placeholder, this.image, {this.key, this.placeholderErrorBuilder, this.imageErrorBuilder, this.excludeFromSemantics, this.imageSemanticLabel, this.fadeOutDuration, this.fadeOutCurve, this.fadeInDuration, this.fadeInCurve, this.color, this.colorBlendMode, this.placeholderColor, this.placeholderColorBlendMode, this.width, this.height, this.fit, this.placeholderFit, this.filterQuality, this.placeholderFilterQuality, this.alignment, this.repeat, this.matchTextDirection, });

final _i2.Key key;

final _i50.ImageProvider<Object> placeholder;

final _i51.ImageErrorWidgetBuilder placeholderErrorBuilder;

final _i50.ImageProvider<Object> image;

final _i51.ImageErrorWidgetBuilder imageErrorBuilder;

final bool excludeFromSemantics;

final String imageSemanticLabel;

final Duration fadeOutDuration;

final _i77.Curve fadeOutCurve;

final Duration fadeInDuration;

final _i77.Curve fadeInCurve;

final _i5.Color color;

final _i5.BlendMode colorBlendMode;

final _i5.Color placeholderColor;

final _i5.BlendMode placeholderColorBlendMode;

final double width;

final double height;

final _i13.BoxFit fit;

final _i13.BoxFit placeholderFit;

final _i5.FilterQuality filterQuality;

final _i5.FilterQuality placeholderFilterQuality;

final _i11.AlignmentGeometry alignment;

final _i29.ImageRepeat repeat;

final bool matchTextDirection;

_i1.Widget build(_i1.BuildContext context) { return
_i4.FadeInImage
(); } 
 }
class $Form extends _i1.StatelessWidget {$Form(this.child, {this.key, this.canPop, this.onPopInvoked, this.onPopInvokedWithResult, this.onWillPop, this.onChanged, this.autovalidateMode, });

final _i2.Key key;

final _i3.Widget child;

final bool canPop;

final _i131.PopInvokedCallback onPopInvoked;

final _i132.PopInvokedWithResultCallback<Object> onPopInvokedWithResult;

final _i35.WillPopCallback onWillPop;

final _i5.VoidCallback onChanged;

final _i120.AutovalidateMode autovalidateMode;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Form
(); } 
 }
class $FormField extends _i1.StatelessWidget {$FormField(this.builder, {this.key, this.onSaved, this.forceErrorText, this.validator, this.initialValue, this.enabled, this.autovalidateMode, this.restorationId, });

final _i2.Key key;

final _i120.FormFieldBuilder<T> builder;

final _i120.FormFieldSetter<T> onSaved;

final String forceErrorText;

final _i120.FormFieldValidator<T> validator;

final T initialValue;

final bool enabled;

final _i120.AutovalidateMode autovalidateMode;

final String restorationId;

_i1.Widget build(_i1.BuildContext context) { return
_i4.FormField
(); } 
 }
class $PopScope extends _i1.StatelessWidget {$PopScope(this.child, {this.key, this.canPop, this.onPopInvokedWithResult, this.onPopInvoked, });

final _i2.Key key;

final _i3.Widget child;

final bool canPop;

final _i132.PopInvokedWithResultCallback<T> onPopInvokedWithResult;

final _i131.PopInvokedCallback onPopInvoked;

_i1.Widget build(_i1.BuildContext context) { return
_i4.PopScope
(); } 
 }
class $WillPopScope extends _i1.StatelessWidget {$WillPopScope(this.child, this.onWillPop, {this.key, });

final _i2.Key key;

final _i3.Widget child;

final _i35.WillPopCallback onWillPop;

_i1.Widget build(_i1.BuildContext context) { return
_i4.WillPopScope
(); } 
 }
class $GridPaper extends _i1.StatelessWidget {$GridPaper({this.key, this.color, this.interval, this.divisions, this.subdivisions, this.child, });

final _i2.Key key;

final _i5.Color color;

final double interval;

final int divisions;

final int subdivisions;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.GridPaper
(); } 
 }
class $Icon extends _i1.StatelessWidget {$Icon(this.icon, {this.key, this.size, this.fill, this.weight, this.grade, this.opticalSize, this.color, this.shadows, this.semanticLabel, this.textDirection, this.applyTextScaling, });

final _i107.IconData icon;

final _i2.Key key;

final double size;

final double fill;

final double weight;

final double grade;

final double opticalSize;

final _i5.Color color;

final List<_i5.Shadow> shadows;

final String semanticLabel;

final _i5.TextDirection textDirection;

final bool applyTextScaling;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Icon
(); } 
 }
class $IconTheme extends _i1.StatelessWidget {$IconTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i133.IconThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.IconTheme
(); } 
 }
class $ImageFiltered extends _i1.StatelessWidget {$ImageFiltered(this.imageFilter, {this.key, this.child, this.enabled, });

final _i2.Key key;

final _i5.ImageFilter imageFilter;

final _i3.Widget child;

final bool enabled;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ImageFiltered
(); } 
 }
class $ImageIcon extends _i1.StatelessWidget {$ImageIcon(this.image, {this.key, this.size, this.color, this.semanticLabel, });

final _i50.ImageProvider<Object> image;

final _i2.Key key;

final double size;

final _i5.Color color;

final String semanticLabel;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ImageIcon
(); } 
 }
class $InteractiveViewer extends _i1.StatelessWidget {$InteractiveViewer(this.child, {this.key, this.clipBehavior, this.panAxis, this.boundaryMargin, this.constrained, this.maxScale, this.minScale, this.interactionEndFrictionCoefficient, this.onInteractionEnd, this.onInteractionStart, this.onInteractionUpdate, this.panEnabled, this.scaleEnabled, this.scaleFactor, this.transformationController, this.alignment, this.trackpadScrollCausesScale, });

final _i2.Key key;

final _i5.Clip clipBehavior;

final _i134.PanAxis panAxis;

final _i14.EdgeInsets boundaryMargin;

final bool constrained;

final double maxScale;

final double minScale;

final double interactionEndFrictionCoefficient;

final _i63.GestureScaleEndCallback onInteractionEnd;

final _i63.GestureScaleStartCallback onInteractionStart;

final _i63.GestureScaleUpdateCallback onInteractionUpdate;

final bool panEnabled;

final bool scaleEnabled;

final double scaleFactor;

final _i134.TransformationController transformationController;

final _i11.Alignment alignment;

final bool trackpadScrollCausesScale;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.InteractiveViewer
(); } 
 }
class $KeyboardListener extends _i1.StatelessWidget {$KeyboardListener(this.focusNode, this.child, {this.key, this.autofocus, this.includeSemantics, this.onKeyEvent, });

final _i2.Key key;

final _i43.FocusNode focusNode;

final bool autofocus;

final bool includeSemantics;

final _i44.ValueChanged<_i135.KeyEvent> onKeyEvent;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.KeyboardListener
(); } 
 }
class $ListWheelScrollView extends _i1.StatelessWidget {$ListWheelScrollView(this.itemExtent, this.children, {this.key, this.controller, this.physics, this.diameterRatio, this.perspective, this.offAxisFraction, this.useMagnifier, this.magnification, this.overAndUnderCenterOpacity, this.squeeze, this.onSelectedItemChanged, this.renderChildrenOutsideViewport, this.clipBehavior, this.hitTestBehavior, this.restorationId, this.scrollBehavior, });

final _i2.Key key;

final _i52.ScrollController controller;

final _i53.ScrollPhysics physics;

final double diameterRatio;

final double perspective;

final double offAxisFraction;

final bool useMagnifier;

final double magnification;

final double overAndUnderCenterOpacity;

final double itemExtent;

final double squeeze;

final _i44.ValueChanged<int> onSelectedItemChanged;

final bool renderChildrenOutsideViewport;

final _i5.Clip clipBehavior;

final _i6.HitTestBehavior hitTestBehavior;

final String restorationId;

final _i57.ScrollBehavior scrollBehavior;

final List<_i3.Widget> children;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ListWheelScrollView
(); } 
 }
class $ListWheelViewport extends _i1.StatelessWidget {$ListWheelViewport(this.itemExtent, this.offset, this.childDelegate, {this.key, this.diameterRatio, this.perspective, this.offAxisFraction, this.useMagnifier, this.magnification, this.overAndUnderCenterOpacity, this.squeeze, this.renderChildrenOutsideViewport, this.clipBehavior, });

final _i2.Key key;

final double diameterRatio;

final double perspective;

final double offAxisFraction;

final bool useMagnifier;

final double magnification;

final double overAndUnderCenterOpacity;

final double itemExtent;

final double squeeze;

final bool renderChildrenOutsideViewport;

final _i96.ViewportOffset offset;

final _i110.ListWheelChildDelegate childDelegate;

final _i5.Clip clipBehavior;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ListWheelViewport
(); } 
 }
class $NavigationToolbar extends _i1.StatelessWidget {$NavigationToolbar({this.key, this.leading, this.middle, this.trailing, this.centerMiddle, this.middleSpacing, });

final _i2.Key key;

final _i3.Widget leading;

final _i3.Widget middle;

final _i3.Widget trailing;

final bool centerMiddle;

final double middleSpacing;

_i1.Widget build(_i1.BuildContext context) { return
_i4.NavigationToolbar
(); } 
 }
class $NavigatorPopHandler extends _i1.StatelessWidget {$NavigatorPopHandler(this.child, {this.key, this.onPop, this.enabled, });

final _i2.Key key;

final _i5.VoidCallback onPop;

final bool enabled;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.NavigatorPopHandler
(); } 
 }
class $NestedScrollView extends _i1.StatelessWidget {$NestedScrollView(this.headerSliverBuilder, this.body, {this.key, this.controller, this.scrollDirection, this.reverse, this.physics, this.dragStartBehavior, this.floatHeaderSlivers, this.clipBehavior, this.hitTestBehavior, this.restorationId, this.scrollBehavior, });

final _i2.Key key;

final _i52.ScrollController controller;

final _i18.Axis scrollDirection;

final bool reverse;

final _i53.ScrollPhysics physics;

final _i136.NestedScrollViewHeaderSliversBuilder headerSliverBuilder;

final _i3.Widget body;

final _i56.DragStartBehavior dragStartBehavior;

final bool floatHeaderSlivers;

final _i5.Clip clipBehavior;

final _i6.HitTestBehavior hitTestBehavior;

final String restorationId;

final _i57.ScrollBehavior scrollBehavior;

_i1.Widget build(_i1.BuildContext context) { return
_i4.NestedScrollView
(); } 
 }
class $SliverOverlapAbsorber extends _i1.StatelessWidget {$SliverOverlapAbsorber(this.handle, {this.key, this.sliver, });

final _i2.Key key;

final _i136.SliverOverlapAbsorberHandle handle;

final _i3.Widget sliver;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SliverOverlapAbsorber
(); } 
 }
class $SliverOverlapInjector extends _i1.StatelessWidget {$SliverOverlapInjector(this.handle, {this.key, this.sliver, });

final _i2.Key key;

final _i136.SliverOverlapAbsorberHandle handle;

final _i3.Widget sliver;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SliverOverlapInjector
(); } 
 }
class $NestedScrollViewViewport extends _i1.StatelessWidget {$NestedScrollViewViewport(this.offset, this.handle, {this.key, this.axisDirection, this.crossAxisDirection, this.anchor, this.center, this.slivers, this.clipBehavior, });

final _i2.Key key;

final _i18.AxisDirection axisDirection;

final _i18.AxisDirection crossAxisDirection;

final double anchor;

final _i96.ViewportOffset offset;

final _i2.Key center;

final List<_i3.Widget> slivers;

final _i136.SliverOverlapAbsorberHandle handle;

final _i5.Clip clipBehavior;

_i1.Widget build(_i1.BuildContext context) { return
_i4.NestedScrollViewViewport
(); } 
 }
class $SliverFillViewport extends _i1.StatelessWidget {$SliverFillViewport(this.delegate, {this.key, this.viewportFraction, this.padEnds, });

final _i2.Key key;

final _i88.SliverChildDelegate delegate;

final double viewportFraction;

final bool padEnds;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SliverFillViewport
(); } 
 }
class $SliverFillRemaining extends _i1.StatelessWidget {$SliverFillRemaining({this.key, this.child, this.hasScrollBody, this.fillOverscroll, });

final _i2.Key key;

final _i3.Widget child;

final bool hasScrollBody;

final bool fillOverscroll;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SliverFillRemaining
(); } 
 }
class $OrientationBuilder extends _i1.StatelessWidget {$OrientationBuilder(this.builder, {this.key, });

final _i2.Key key;

final _i137.OrientationWidgetBuilder builder;

_i1.Widget build(_i1.BuildContext context) { return
_i4.OrientationBuilder
(); } 
 }
class $OverflowBar extends _i1.StatelessWidget {$OverflowBar({this.key, this.spacing, this.alignment, this.overflowSpacing, this.overflowAlignment, this.overflowDirection, this.textDirection, this.children, });

final _i2.Key key;

final double spacing;

final _i20.MainAxisAlignment alignment;

final double overflowSpacing;

final _i138.OverflowBarAlignment overflowAlignment;

final _i18.VerticalDirection overflowDirection;

final _i5.TextDirection textDirection;

final List<_i3.Widget> children;

_i1.Widget build(_i1.BuildContext context) { return
_i4.OverflowBar
(); } 
 }
class $PageView extends _i1.StatelessWidget {$PageView({this.key, this.scrollDirection, this.reverse, this.controller, this.physics, this.pageSnapping, this.onPageChanged, this.children, this.dragStartBehavior, this.allowImplicitScrolling, this.restorationId, this.clipBehavior, this.hitTestBehavior, this.scrollBehavior, this.padEnds, });

final _i2.Key key;

final _i18.Axis scrollDirection;

final bool reverse;

final _i139.PageController controller;

final _i53.ScrollPhysics physics;

final bool pageSnapping;

final _i44.ValueChanged<int> onPageChanged;

final List<_i3.Widget> children;

final _i56.DragStartBehavior dragStartBehavior;

final bool allowImplicitScrolling;

final String restorationId;

final _i5.Clip clipBehavior;

final _i6.HitTestBehavior hitTestBehavior;

final _i57.ScrollBehavior scrollBehavior;

final bool padEnds;

_i1.Widget build(_i1.BuildContext context) { return
_i4.PageView
(); } 
 }
class $PinnedHeaderSliver extends _i1.StatelessWidget {$PinnedHeaderSliver({this.key, this.child, });

final _i2.Key key;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.PinnedHeaderSliver
(); } 
 }
class $AndroidView extends _i1.StatelessWidget {$AndroidView(this.viewType, {this.key, this.onPlatformViewCreated, this.hitTestBehavior, this.layoutDirection, this.gestureRecognizers, this.creationParams, this.creationParamsCodec, this.clipBehavior, });

final _i2.Key key;

final String viewType;

final _i140.PlatformViewCreatedCallback onPlatformViewCreated;

final _i141.PlatformViewHitTestBehavior hitTestBehavior;

final _i5.TextDirection layoutDirection;

final Set<_i44.Factory<_i56.OneSequenceGestureRecognizer>> gestureRecognizers;

final dynamic creationParams;

final _i142.MessageCodec<dynamic> creationParamsCodec;

final _i5.Clip clipBehavior;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AndroidView
(); } 
 }
class $UiKitView extends _i1.StatelessWidget {$UiKitView(this.viewType, {this.key, this.onPlatformViewCreated, this.hitTestBehavior, this.layoutDirection, this.creationParams, this.creationParamsCodec, this.gestureRecognizers, });

final _i2.Key key;

final String viewType;

final _i140.PlatformViewCreatedCallback onPlatformViewCreated;

final _i141.PlatformViewHitTestBehavior hitTestBehavior;

final _i5.TextDirection layoutDirection;

final dynamic creationParams;

final _i142.MessageCodec<dynamic> creationParamsCodec;

final Set<_i44.Factory<_i56.OneSequenceGestureRecognizer>> gestureRecognizers;

_i1.Widget build(_i1.BuildContext context) { return
_i4.UiKitView
(); } 
 }
class $AppKitView extends _i1.StatelessWidget {$AppKitView(this.viewType, {this.key, this.onPlatformViewCreated, this.hitTestBehavior, this.layoutDirection, this.creationParams, this.creationParamsCodec, this.gestureRecognizers, });

final _i2.Key key;

final String viewType;

final _i140.PlatformViewCreatedCallback onPlatformViewCreated;

final _i141.PlatformViewHitTestBehavior hitTestBehavior;

final _i5.TextDirection layoutDirection;

final dynamic creationParams;

final _i142.MessageCodec<dynamic> creationParamsCodec;

final Set<_i44.Factory<_i56.OneSequenceGestureRecognizer>> gestureRecognizers;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AppKitView
(); } 
 }
class $HtmlElementView extends _i1.StatelessWidget {$HtmlElementView(this.viewType, {this.key, this.onPlatformViewCreated, this.creationParams, });

final _i2.Key key;

final String viewType;

final _i140.PlatformViewCreatedCallback onPlatformViewCreated;

final Object creationParams;

_i1.Widget build(_i1.BuildContext context) { return
_i4.HtmlElementView
(); } 
 }
class $PlatformViewLink extends _i1.StatelessWidget {$PlatformViewLink(this.surfaceFactory, this.onCreatePlatformView, this.viewType, {this.key, });

final _i2.Key key;

final _i143.PlatformViewSurfaceFactory surfaceFactory;

final _i143.CreatePlatformViewCallback onCreatePlatformView;

final String viewType;

_i1.Widget build(_i1.BuildContext context) { return
_i4.PlatformViewLink
(); } 
 }
class $PlatformViewSurface extends _i1.StatelessWidget {$PlatformViewSurface(this.controller, this.hitTestBehavior, this.gestureRecognizers, {this.key, });

final _i2.Key key;

final _i140.PlatformViewController controller;

final _i141.PlatformViewHitTestBehavior hitTestBehavior;

final Set<_i44.Factory<_i56.OneSequenceGestureRecognizer>> gestureRecognizers;

_i1.Widget build(_i1.BuildContext context) { return
_i4.PlatformViewSurface
(); } 
 }
class $AndroidViewSurface extends _i1.StatelessWidget {$AndroidViewSurface(this.controller, this.hitTestBehavior, this.gestureRecognizers, {this.key, });

final _i2.Key key;

final _i140.AndroidViewController controller;

final _i141.PlatformViewHitTestBehavior hitTestBehavior;

final Set<_i44.Factory<_i56.OneSequenceGestureRecognizer>> gestureRecognizers;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AndroidViewSurface
(); } 
 }
class $PreferredSize extends _i1.StatelessWidget {$PreferredSize(this.preferredSize, this.child, {this.key, });

final _i2.Key key;

final _i5.Size preferredSize;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.PreferredSize
(); } 
 }
class $RawKeyboardListener extends _i1.StatelessWidget {$RawKeyboardListener(this.focusNode, this.child, {this.key, this.autofocus, this.includeSemantics, this.onKey, });

final _i2.Key key;

final _i43.FocusNode focusNode;

final bool autofocus;

final bool includeSemantics;

final _i44.ValueChanged<_i144.RawKeyEvent> onKey;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.RawKeyboardListener
(); } 
 }
class $ReorderableList extends _i1.StatelessWidget {$ReorderableList(this.itemBuilder, this.itemCount, this.onReorder, {this.key, this.onReorderStart, this.onReorderEnd, this.itemExtent, this.itemExtentBuilder, this.prototypeItem, this.proxyDecorator, this.padding, this.scrollDirection, this.reverse, this.controller, this.primary, this.physics, this.shrinkWrap, this.anchor, this.cacheExtent, this.dragStartBehavior, this.keyboardDismissBehavior, this.restorationId, this.clipBehavior, this.autoScrollerVelocityScalar, });

final _i2.Key key;

final _i3.IndexedWidgetBuilder itemBuilder;

final int itemCount;

final _i145.ReorderCallback onReorder;

final void Function(int) onReorderStart;

final void Function(int) onReorderEnd;

final double itemExtent;

final _i89.ItemExtentBuilder itemExtentBuilder;

final _i3.Widget prototypeItem;

final _i145.ReorderItemProxyDecorator proxyDecorator;

final _i14.EdgeInsetsGeometry padding;

final _i18.Axis scrollDirection;

final bool reverse;

final _i52.ScrollController controller;

final bool primary;

final _i53.ScrollPhysics physics;

final bool shrinkWrap;

final double anchor;

final double cacheExtent;

final _i56.DragStartBehavior dragStartBehavior;

final _i123.ScrollViewKeyboardDismissBehavior keyboardDismissBehavior;

final String restorationId;

final _i5.Clip clipBehavior;

final double autoScrollerVelocityScalar;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ReorderableList
(); } 
 }
class $SliverReorderableList extends _i1.StatelessWidget {$SliverReorderableList(this.itemBuilder, this.itemCount, this.onReorder, {this.key, this.findChildIndexCallback, this.onReorderStart, this.onReorderEnd, this.itemExtent, this.itemExtentBuilder, this.prototypeItem, this.proxyDecorator, this.autoScrollerVelocityScalar, });

final _i2.Key key;

final _i3.IndexedWidgetBuilder itemBuilder;

final _i88.ChildIndexGetter findChildIndexCallback;

final int itemCount;

final _i145.ReorderCallback onReorder;

final void Function(int) onReorderStart;

final void Function(int) onReorderEnd;

final double itemExtent;

final _i89.ItemExtentBuilder itemExtentBuilder;

final _i3.Widget prototypeItem;

final _i145.ReorderItemProxyDecorator proxyDecorator;

final double autoScrollerVelocityScalar;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SliverReorderableList
(); } 
 }
class $ReorderableDragStartListener extends _i1.StatelessWidget {$ReorderableDragStartListener(this.child, this.index, {this.key, this.enabled, });

final _i2.Key key;

final _i3.Widget child;

final int index;

final bool enabled;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ReorderableDragStartListener
(); } 
 }
class $ReorderableDelayedDragStartListener extends _i1.StatelessWidget {$ReorderableDelayedDragStartListener(this.child, this.index, {this.key, this.enabled, });

final _i2.Key key;

final _i3.Widget child;

final int index;

final bool enabled;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ReorderableDelayedDragStartListener
(); } 
 }
class $SafeArea extends _i1.StatelessWidget {$SafeArea(this.child, {this.key, this.left, this.top, this.right, this.bottom, this.minimum, this.maintainBottomViewPadding, });

final _i2.Key key;

final bool left;

final bool top;

final bool right;

final bool bottom;

final _i14.EdgeInsets minimum;

final bool maintainBottomViewPadding;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SafeArea
(); } 
 }
class $SliverSafeArea extends _i1.StatelessWidget {$SliverSafeArea(this.sliver, {this.key, this.left, this.top, this.right, this.bottom, this.minimum, });

final _i2.Key key;

final bool left;

final bool top;

final bool right;

final bool bottom;

final _i14.EdgeInsets minimum;

final _i3.Widget sliver;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SliverSafeArea
(); } 
 }
class $SingleChildScrollView extends _i1.StatelessWidget {$SingleChildScrollView({this.key, this.scrollDirection, this.reverse, this.padding, this.primary, this.physics, this.controller, this.child, this.dragStartBehavior, this.clipBehavior, this.hitTestBehavior, this.restorationId, this.keyboardDismissBehavior, });

final _i2.Key key;

final _i18.Axis scrollDirection;

final bool reverse;

final _i14.EdgeInsetsGeometry padding;

final bool primary;

final _i53.ScrollPhysics physics;

final _i52.ScrollController controller;

final _i3.Widget child;

final _i56.DragStartBehavior dragStartBehavior;

final _i5.Clip clipBehavior;

final _i6.HitTestBehavior hitTestBehavior;

final String restorationId;

final _i123.ScrollViewKeyboardDismissBehavior keyboardDismissBehavior;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SingleChildScrollView
(); } 
 }
class $SliverLayoutBuilder extends _i1.StatelessWidget {$SliverLayoutBuilder(this.builder, {this.key, });

final _i2.Key key;

final _i3.Widget Function(_i3.BuildContext, _i89.SliverConstraints, ) builder;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SliverLayoutBuilder
(); } 
 }
class $SliverPersistentHeader extends _i1.StatelessWidget {$SliverPersistentHeader(this.delegate, {this.key, this.pinned, this.floating, });

final _i2.Key key;

final _i146.SliverPersistentHeaderDelegate delegate;

final bool pinned;

final bool floating;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SliverPersistentHeader
(); } 
 }
class $SliverResizingHeader extends _i1.StatelessWidget {$SliverResizingHeader({this.key, this.minExtentPrototype, this.maxExtentPrototype, this.child, });

final _i2.Key key;

final _i3.Widget minExtentPrototype;

final _i3.Widget maxExtentPrototype;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SliverResizingHeader
(); } 
 }
class $TreeSliver extends _i1.StatelessWidget {$TreeSliver(this.tree, {this.key, this.treeNodeBuilder, this.treeRowExtentBuilder, this.controller, this.onNodeToggle, this.toggleAnimationStyle, this.indentation, this.addAutomaticKeepAlives, this.addRepaintBoundaries, this.addSemanticIndexes, this.semanticIndexCallback, this.semanticIndexOffset, this.findChildIndexCallback, });

final _i2.Key key;

final List<_i147.TreeSliverNode<T>> tree;

final _i147.TreeSliverNodeBuilder treeNodeBuilder;

final _i147.TreeSliverRowExtentBuilder treeRowExtentBuilder;

final _i147.TreeSliverController controller;

final _i147.TreeSliverNodeCallback onNodeToggle;

final _i148.AnimationStyle toggleAnimationStyle;

final _i149.TreeSliverIndentationType indentation;

final bool addAutomaticKeepAlives;

final bool addRepaintBoundaries;

final bool addSemanticIndexes;

final _i88.SemanticIndexCallback semanticIndexCallback;

final int semanticIndexOffset;

final int Function(_i2.Key) findChildIndexCallback;

_i1.Widget build(_i1.BuildContext context) { return
_i4.TreeSliver
(); } 
 }
class $SnapshotWidget extends _i1.StatelessWidget {$SnapshotWidget(this.controller, this.child, {this.key, this.mode, this.painter, this.autoresize, });

final _i2.Key key;

final _i150.SnapshotMode mode;

final _i150.SnapshotPainter painter;

final bool autoresize;

final _i150.SnapshotController controller;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SnapshotWidget
(); } 
 }
class $Spacer extends _i1.StatelessWidget {$Spacer({this.key, this.flex, });

final _i2.Key key;

final int flex;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Spacer
(); } 
 }
class $Texture extends _i1.StatelessWidget {$Texture(this.textureId, {this.key, this.freeze, this.filterQuality, });

final _i2.Key key;

final int textureId;

final bool freeze;

final _i5.FilterQuality filterQuality;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Texture
(); } 
 }
class $TweenAnimationBuilder extends _i1.StatelessWidget {$TweenAnimationBuilder(this.tween, this.duration, this.builder, {this.key, this.curve, this.onEnd, this.child, });

final _i2.Key key;

final _i151.Tween<T> tween;

final Duration duration;

final _i77.Curve curve;

final _i101.ValueWidgetBuilder<T> builder;

final _i5.VoidCallback onEnd;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.TweenAnimationBuilder
(); } 
 }
class $AppBar extends _i1.StatelessWidget {$AppBar({this.key, this.leading, this.automaticallyImplyLeading, this.title, this.actions, this.flexibleSpace, this.bottom, this.elevation, this.scrolledUnderElevation, this.notificationPredicate, this.shadowColor, this.surfaceTintColor, this.shape, this.backgroundColor, this.foregroundColor, this.iconTheme, this.actionsIconTheme, this.primary, this.centerTitle, this.excludeHeaderSemantics, this.titleSpacing, this.toolbarOpacity, this.bottomOpacity, this.toolbarHeight, this.leadingWidth, this.toolbarTextStyle, this.titleTextStyle, this.systemOverlayStyle, this.forceMaterialTransparency, this.clipBehavior, });

final _i2.Key key;

final _i3.Widget leading;

final bool automaticallyImplyLeading;

final _i3.Widget title;

final List<_i3.Widget> actions;

final _i3.Widget flexibleSpace;

final _i152.PreferredSizeWidget bottom;

final double elevation;

final double scrolledUnderElevation;

final _i65.ScrollNotificationPredicate notificationPredicate;

final _i5.Color shadowColor;

final _i5.Color surfaceTintColor;

final _i94.ShapeBorder shape;

final _i5.Color backgroundColor;

final _i5.Color foregroundColor;

final _i133.IconThemeData iconTheme;

final _i133.IconThemeData actionsIconTheme;

final bool primary;

final bool centerTitle;

final bool excludeHeaderSemantics;

final double titleSpacing;

final double toolbarOpacity;

final double bottomOpacity;

final double toolbarHeight;

final double leadingWidth;

final _i38.TextStyle toolbarTextStyle;

final _i38.TextStyle titleTextStyle;

final _i153.SystemUiOverlayStyle systemOverlayStyle;

final bool forceMaterialTransparency;

final _i5.Clip clipBehavior;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AppBar
(); } 
 }
class $SliverAppBar extends _i1.StatelessWidget {$SliverAppBar({this.key, this.leading, this.automaticallyImplyLeading, this.title, this.actions, this.flexibleSpace, this.bottom, this.elevation, this.scrolledUnderElevation, this.shadowColor, this.surfaceTintColor, this.forceElevated, this.backgroundColor, this.foregroundColor, this.iconTheme, this.actionsIconTheme, this.primary, this.centerTitle, this.excludeHeaderSemantics, this.titleSpacing, this.collapsedHeight, this.expandedHeight, this.floating, this.pinned, this.snap, this.stretch, this.stretchTriggerOffset, this.onStretchTrigger, this.shape, this.toolbarHeight, this.leadingWidth, this.toolbarTextStyle, this.titleTextStyle, this.systemOverlayStyle, this.forceMaterialTransparency, this.clipBehavior, });

final _i2.Key key;

final _i3.Widget leading;

final bool automaticallyImplyLeading;

final _i3.Widget title;

final List<_i3.Widget> actions;

final _i3.Widget flexibleSpace;

final _i152.PreferredSizeWidget bottom;

final double elevation;

final double scrolledUnderElevation;

final _i5.Color shadowColor;

final _i5.Color surfaceTintColor;

final bool forceElevated;

final _i5.Color backgroundColor;

final _i5.Color foregroundColor;

final _i133.IconThemeData iconTheme;

final _i133.IconThemeData actionsIconTheme;

final bool primary;

final bool centerTitle;

final bool excludeHeaderSemantics;

final double titleSpacing;

final double collapsedHeight;

final double expandedHeight;

final bool floating;

final bool pinned;

final bool snap;

final bool stretch;

final double stretchTriggerOffset;

final _i44.AsyncCallback onStretchTrigger;

final _i94.ShapeBorder shape;

final double toolbarHeight;

final double leadingWidth;

final _i38.TextStyle toolbarTextStyle;

final _i38.TextStyle titleTextStyle;

final _i153.SystemUiOverlayStyle systemOverlayStyle;

final bool forceMaterialTransparency;

final _i5.Clip clipBehavior;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SliverAppBar
(); } 
 }
class $BackButtonIcon extends _i1.StatelessWidget {$BackButtonIcon({this.key});

final _i2.Key key;

_i1.Widget build(_i1.BuildContext context) { return
_i4.BackButtonIcon
(); } 
 }
class $BackButton extends _i1.StatelessWidget {$BackButton({this.key, this.color, this.style, this.onPressed, });

final _i2.Key key;

final _i5.Color color;

final _i154.ButtonStyle style;

final _i5.VoidCallback onPressed;

_i1.Widget build(_i1.BuildContext context) { return
_i4.BackButton
(); } 
 }
class $CloseButtonIcon extends _i1.StatelessWidget {$CloseButtonIcon({this.key});

final _i2.Key key;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CloseButtonIcon
(); } 
 }
class $CloseButton extends _i1.StatelessWidget {$CloseButton({this.key, this.color, this.onPressed, this.style, });

final _i2.Key key;

final _i5.Color color;

final _i5.VoidCallback onPressed;

final _i154.ButtonStyle style;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CloseButton
(); } 
 }
class $DrawerButtonIcon extends _i1.StatelessWidget {$DrawerButtonIcon({this.key});

final _i2.Key key;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DrawerButtonIcon
(); } 
 }
class $DrawerButton extends _i1.StatelessWidget {$DrawerButton({this.key, this.color, this.style, this.onPressed, });

final _i2.Key key;

final _i5.Color color;

final _i154.ButtonStyle style;

final _i5.VoidCallback onPressed;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DrawerButton
(); } 
 }
class $EndDrawerButtonIcon extends _i1.StatelessWidget {$EndDrawerButtonIcon({this.key});

final _i2.Key key;

_i1.Widget build(_i1.BuildContext context) { return
_i4.EndDrawerButtonIcon
(); } 
 }
class $EndDrawerButton extends _i1.StatelessWidget {$EndDrawerButton({this.key, this.color, this.style, this.onPressed, });

final _i2.Key key;

final _i5.Color color;

final _i154.ButtonStyle style;

final _i5.VoidCallback onPressed;

_i1.Widget build(_i1.BuildContext context) { return
_i4.EndDrawerButton
(); } 
 }
class $ActionIconTheme extends _i1.StatelessWidget {$ActionIconTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i155.ActionIconThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ActionIconTheme
(); } 
 }
class $Theme extends _i1.StatelessWidget {$Theme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i156.ThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Theme
(); } 
 }
class $AnimatedTheme extends _i1.StatelessWidget {$AnimatedTheme(this.data, this.child, {this.key, this.curve, this.duration, this.onEnd, });

final _i2.Key key;

final _i156.ThemeData data;

final _i77.Curve curve;

final Duration duration;

final _i5.VoidCallback onEnd;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AnimatedTheme
(); } 
 }
class $BadgeTheme extends _i1.StatelessWidget {$BadgeTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i157.BadgeThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.BadgeTheme
(); } 
 }
class $MaterialBannerTheme extends _i1.StatelessWidget {$MaterialBannerTheme(this.child, {this.key, this.data, });

final _i2.Key key;

final _i158.MaterialBannerThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.MaterialBannerTheme
(); } 
 }
class $BottomNavigationBarTheme extends _i1.StatelessWidget {$BottomNavigationBarTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i159.BottomNavigationBarThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.BottomNavigationBarTheme
(); } 
 }
class $BottomNavigationBar extends _i1.StatelessWidget {$BottomNavigationBar(this.items, {this.key, this.onTap, this.currentIndex, this.elevation, this.type, this.fixedColor, this.backgroundColor, this.iconSize, this.selectedItemColor, this.unselectedItemColor, this.selectedIconTheme, this.unselectedIconTheme, this.selectedFontSize, this.unselectedFontSize, this.selectedLabelStyle, this.unselectedLabelStyle, this.showSelectedLabels, this.showUnselectedLabels, this.mouseCursor, this.enableFeedback, this.landscapeLayout, this.useLegacyColorScheme, });

final _i2.Key key;

final List<_i106.BottomNavigationBarItem> items;

final _i44.ValueChanged<int> onTap;

final int currentIndex;

final double elevation;

final _i160.BottomNavigationBarType type;

final _i5.Color fixedColor;

final _i5.Color backgroundColor;

final double iconSize;

final _i5.Color selectedItemColor;

final _i5.Color unselectedItemColor;

final _i133.IconThemeData selectedIconTheme;

final _i133.IconThemeData unselectedIconTheme;

final double selectedFontSize;

final double unselectedFontSize;

final _i38.TextStyle selectedLabelStyle;

final _i38.TextStyle unselectedLabelStyle;

final bool showSelectedLabels;

final bool showUnselectedLabels;

final _i32.MouseCursor mouseCursor;

final bool enableFeedback;

final _i160.BottomNavigationBarLandscapeLayout landscapeLayout;

final bool useLegacyColorScheme;

_i1.Widget build(_i1.BuildContext context) { return
_i4.BottomNavigationBar
(); } 
 }
class $Material extends _i1.StatelessWidget {$Material({this.key, this.type, this.elevation, this.color, this.shadowColor, this.surfaceTintColor, this.textStyle, this.borderRadius, this.shape, this.borderOnForeground, this.clipBehavior, this.animationDuration, this.child, });

final _i2.Key key;

final _i161.MaterialType type;

final double elevation;

final _i5.Color color;

final _i5.Color shadowColor;

final _i5.Color surfaceTintColor;

final _i38.TextStyle textStyle;

final _i8.BorderRadiusGeometry borderRadius;

final _i94.ShapeBorder shape;

final bool borderOnForeground;

final _i5.Clip clipBehavior;

final Duration animationDuration;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Material
(); } 
 }
class $ScaffoldMessenger extends _i1.StatelessWidget {$ScaffoldMessenger(this.child, {this.key, });

final _i2.Key key;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ScaffoldMessenger
(); } 
 }
class $Scaffold extends _i1.StatelessWidget {$Scaffold({this.key, this.appBar, this.body, this.floatingActionButton, this.floatingActionButtonLocation, this.floatingActionButtonAnimator, this.persistentFooterButtons, this.persistentFooterAlignment, this.drawer, this.onDrawerChanged, this.endDrawer, this.onEndDrawerChanged, this.bottomNavigationBar, this.bottomSheet, this.backgroundColor, this.resizeToAvoidBottomInset, this.primary, this.drawerDragStartBehavior, this.extendBody, this.extendBodyBehindAppBar, this.drawerScrimColor, this.drawerEdgeDragWidth, this.drawerEnableOpenDragGesture, this.endDrawerEnableOpenDragGesture, this.restorationId, });

final _i2.Key key;

final _i152.PreferredSizeWidget appBar;

final _i3.Widget body;

final _i3.Widget floatingActionButton;

final _i162.FloatingActionButtonLocation floatingActionButtonLocation;

final _i162.FloatingActionButtonAnimator floatingActionButtonAnimator;

final List<_i3.Widget> persistentFooterButtons;

final _i11.AlignmentDirectional persistentFooterAlignment;

final _i3.Widget drawer;

final _i163.DrawerCallback onDrawerChanged;

final _i3.Widget endDrawer;

final _i163.DrawerCallback onEndDrawerChanged;

final _i3.Widget bottomNavigationBar;

final _i3.Widget bottomSheet;

final _i5.Color backgroundColor;

final bool resizeToAvoidBottomInset;

final bool primary;

final _i56.DragStartBehavior drawerDragStartBehavior;

final bool extendBody;

final bool extendBodyBehindAppBar;

final _i5.Color drawerScrimColor;

final double drawerEdgeDragWidth;

final bool drawerEnableOpenDragGesture;

final bool endDrawerEnableOpenDragGesture;

final String restorationId;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Scaffold
(); } 
 }
class $MaterialBanner extends _i1.StatelessWidget {$MaterialBanner(this.content, this.actions, {this.key, this.contentTextStyle, this.elevation, this.leading, this.backgroundColor, this.surfaceTintColor, this.shadowColor, this.dividerColor, this.padding, this.margin, this.leadingPadding, this.forceActionsBelow, this.overflowAlignment, this.animation, this.onVisible, });

final _i2.Key key;

final _i3.Widget content;

final _i38.TextStyle contentTextStyle;

final List<_i3.Widget> actions;

final double elevation;

final _i3.Widget leading;

final _i5.Color backgroundColor;

final _i5.Color surfaceTintColor;

final _i5.Color shadowColor;

final _i5.Color dividerColor;

final _i14.EdgeInsetsGeometry padding;

final _i14.EdgeInsetsGeometry margin;

final _i14.EdgeInsetsGeometry leadingPadding;

final bool forceActionsBelow;

final _i138.OverflowBarAlignment overflowAlignment;

final _i28.Animation<double> animation;

final _i5.VoidCallback onVisible;

_i1.Widget build(_i1.BuildContext context) { return
_i4.MaterialBanner
(); } 
 }
class $Divider extends _i1.StatelessWidget {$Divider({this.key, this.height, this.thickness, this.indent, this.endIndent, this.color, });

final _i2.Key key;

final double height;

final double thickness;

final double indent;

final double endIndent;

final _i5.Color color;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Divider
(); } 
 }
class $VerticalDivider extends _i1.StatelessWidget {$VerticalDivider({this.key, this.width, this.thickness, this.indent, this.endIndent, this.color, });

final _i2.Key key;

final double width;

final double thickness;

final double indent;

final double endIndent;

final _i5.Color color;

_i1.Widget build(_i1.BuildContext context) { return
_i4.VerticalDivider
(); } 
 }
class $DividerTheme extends _i1.StatelessWidget {$DividerTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i164.DividerThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DividerTheme
(); } 
 }
class $BottomSheet extends _i1.StatelessWidget {$BottomSheet(this.onClosing, this.builder, {this.key, this.animationController, this.enableDrag, this.showDragHandle, this.dragHandleColor, this.dragHandleSize, this.onDragStart, this.onDragEnd, this.backgroundColor, this.shadowColor, this.elevation, this.shape, this.clipBehavior, this.constraints, });

final _i2.Key key;

final _i165.AnimationController animationController;

final bool enableDrag;

final bool showDragHandle;

final _i5.Color dragHandleColor;

final _i5.Size dragHandleSize;

final _i166.BottomSheetDragStartHandler onDragStart;

final _i166.BottomSheetDragEndHandler onDragEnd;

final _i5.Color backgroundColor;

final _i5.Color shadowColor;

final double elevation;

final _i94.ShapeBorder shape;

final _i5.Clip clipBehavior;

final _i17.BoxConstraints constraints;

final _i5.VoidCallback onClosing;

final _i3.WidgetBuilder builder;

_i1.Widget build(_i1.BuildContext context) { return
_i4.BottomSheet
(); } 
 }
class $Drawer extends _i1.StatelessWidget {$Drawer({this.key, this.backgroundColor, this.elevation, this.shadowColor, this.surfaceTintColor, this.shape, this.width, this.child, this.semanticLabel, this.clipBehavior, });

final _i2.Key key;

final _i5.Color backgroundColor;

final double elevation;

final _i5.Color shadowColor;

final _i5.Color surfaceTintColor;

final _i94.ShapeBorder shape;

final double width;

final _i3.Widget child;

final String semanticLabel;

final _i5.Clip clipBehavior;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Drawer
(); } 
 }
class $DrawerController extends _i1.StatelessWidget {$DrawerController(this.child, this.alignment, {this.key, this.isDrawerOpen, this.drawerCallback, this.dragStartBehavior, this.scrimColor, this.edgeDragWidth, this.enableOpenDragGesture, });

final _i3.GlobalKey<_i3.State<_i3.StatefulWidget>> key;

final _i3.Widget child;

final _i163.DrawerAlignment alignment;

final bool isDrawerOpen;

final _i163.DrawerCallback drawerCallback;

final _i56.DragStartBehavior dragStartBehavior;

final _i5.Color scrimColor;

final double edgeDragWidth;

final bool enableOpenDragGesture;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DrawerController
(); } 
 }
class $DrawerTheme extends _i1.StatelessWidget {$DrawerTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i167.DrawerThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DrawerTheme
(); } 
 }
class $ListTile extends _i1.StatelessWidget {$ListTile({this.key, this.leading, this.title, this.subtitle, this.trailing, this.isThreeLine, this.dense, this.visualDensity, this.shape, this.style, this.selectedColor, this.iconColor, this.textColor, this.titleTextStyle, this.subtitleTextStyle, this.leadingAndTrailingTextStyle, this.contentPadding, this.enabled, this.onTap, this.onLongPress, this.onFocusChange, this.mouseCursor, this.selected, this.focusColor, this.hoverColor, this.splashColor, this.focusNode, this.autofocus, this.tileColor, this.selectedTileColor, this.enableFeedback, this.horizontalTitleGap, this.minVerticalPadding, this.minLeadingWidth, this.minTileHeight, this.titleAlignment, });

final _i2.Key key;

final _i3.Widget leading;

final _i3.Widget title;

final _i3.Widget subtitle;

final _i3.Widget trailing;

final bool isThreeLine;

final bool dense;

final _i156.VisualDensity visualDensity;

final _i94.ShapeBorder shape;

final _i168.ListTileStyle style;

final _i5.Color selectedColor;

final _i5.Color iconColor;

final _i5.Color textColor;

final _i38.TextStyle titleTextStyle;

final _i38.TextStyle subtitleTextStyle;

final _i38.TextStyle leadingAndTrailingTextStyle;

final _i14.EdgeInsetsGeometry contentPadding;

final bool enabled;

final _i58.GestureTapCallback onTap;

final _i59.GestureLongPressCallback onLongPress;

final _i44.ValueChanged<bool> onFocusChange;

final _i32.MouseCursor mouseCursor;

final bool selected;

final _i5.Color focusColor;

final _i5.Color hoverColor;

final _i5.Color splashColor;

final _i43.FocusNode focusNode;

final bool autofocus;

final _i5.Color tileColor;

final _i5.Color selectedTileColor;

final bool enableFeedback;

final double horizontalTitleGap;

final double minVerticalPadding;

final double minLeadingWidth;

final double minTileHeight;

final _i168.ListTileTitleAlignment titleAlignment;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ListTile
(); } 
 }
class $IconButton extends _i1.StatelessWidget {$IconButton(this.onPressed, this.icon, {this.key, this.iconSize, this.visualDensity, this.padding, this.alignment, this.splashRadius, this.color, this.focusColor, this.hoverColor, this.highlightColor, this.splashColor, this.disabledColor, this.mouseCursor, this.focusNode, this.autofocus, this.tooltip, this.enableFeedback, this.constraints, this.style, this.isSelected, this.selectedIcon, });

final _i2.Key key;

final double iconSize;

final _i156.VisualDensity visualDensity;

final _i14.EdgeInsetsGeometry padding;

final _i11.AlignmentGeometry alignment;

final double splashRadius;

final _i5.Color color;

final _i5.Color focusColor;

final _i5.Color hoverColor;

final _i5.Color highlightColor;

final _i5.Color splashColor;

final _i5.Color disabledColor;

final _i5.VoidCallback onPressed;

final _i32.MouseCursor mouseCursor;

final _i43.FocusNode focusNode;

final bool autofocus;

final String tooltip;

final bool enableFeedback;

final _i17.BoxConstraints constraints;

final _i154.ButtonStyle style;

final bool isSelected;

final _i3.Widget selectedIcon;

final _i3.Widget icon;

_i1.Widget build(_i1.BuildContext context) { return
_i4.IconButton
(); } 
 }
class $InkResponse extends _i1.StatelessWidget {$InkResponse({this.key, this.child, this.onTap, this.onTapDown, this.onTapUp, this.onTapCancel, this.onDoubleTap, this.onLongPress, this.onSecondaryTap, this.onSecondaryTapUp, this.onSecondaryTapDown, this.onSecondaryTapCancel, this.onHighlightChanged, this.onHover, this.mouseCursor, this.containedInkWell, this.highlightShape, this.radius, this.borderRadius, this.customBorder, this.focusColor, this.hoverColor, this.highlightColor, this.overlayColor, this.splashColor, this.splashFactory, this.enableFeedback, this.excludeFromSemantics, this.focusNode, this.canRequestFocus, this.onFocusChange, this.autofocus, this.statesController, this.hoverDuration, });

final _i2.Key key;

final _i3.Widget child;

final _i58.GestureTapCallback onTap;

final _i58.GestureTapDownCallback onTapDown;

final _i58.GestureTapUpCallback onTapUp;

final _i58.GestureTapCallback onTapCancel;

final _i58.GestureTapCallback onDoubleTap;

final _i59.GestureLongPressCallback onLongPress;

final _i58.GestureTapCallback onSecondaryTap;

final _i58.GestureTapUpCallback onSecondaryTapUp;

final _i58.GestureTapDownCallback onSecondaryTapDown;

final _i58.GestureTapCallback onSecondaryTapCancel;

final _i44.ValueChanged<bool> onHighlightChanged;

final _i44.ValueChanged<bool> onHover;

final _i32.MouseCursor mouseCursor;

final bool containedInkWell;

final _i9.BoxShape highlightShape;

final double radius;

final _i8.BorderRadius borderRadius;

final _i94.ShapeBorder customBorder;

final _i5.Color focusColor;

final _i5.Color hoverColor;

final _i5.Color highlightColor;

final _i169.WidgetStateProperty<_i5.Color> overlayColor;

final _i5.Color splashColor;

final _i170.InteractiveInkFeatureFactory splashFactory;

final bool enableFeedback;

final bool excludeFromSemantics;

final _i43.FocusNode focusNode;

final bool canRequestFocus;

final _i44.ValueChanged<bool> onFocusChange;

final bool autofocus;

final _i169.WidgetStatesController statesController;

final Duration hoverDuration;

_i1.Widget build(_i1.BuildContext context) { return
_i4.InkResponse
(); } 
 }
class $InkWell extends _i1.StatelessWidget {$InkWell({this.key, this.child, this.onTap, this.onDoubleTap, this.onLongPress, this.onTapDown, this.onTapUp, this.onTapCancel, this.onSecondaryTap, this.onSecondaryTapUp, this.onSecondaryTapDown, this.onSecondaryTapCancel, this.onHighlightChanged, this.onHover, this.mouseCursor, this.focusColor, this.hoverColor, this.highlightColor, this.overlayColor, this.splashColor, this.splashFactory, this.radius, this.borderRadius, this.customBorder, this.enableFeedback, this.excludeFromSemantics, this.focusNode, this.canRequestFocus, this.onFocusChange, this.autofocus, this.statesController, this.hoverDuration, });

final _i2.Key key;

final _i3.Widget child;

final _i58.GestureTapCallback onTap;

final _i58.GestureTapCallback onDoubleTap;

final _i59.GestureLongPressCallback onLongPress;

final _i58.GestureTapDownCallback onTapDown;

final _i58.GestureTapUpCallback onTapUp;

final _i58.GestureTapCallback onTapCancel;

final _i58.GestureTapCallback onSecondaryTap;

final _i58.GestureTapUpCallback onSecondaryTapUp;

final _i58.GestureTapDownCallback onSecondaryTapDown;

final _i58.GestureTapCallback onSecondaryTapCancel;

final _i44.ValueChanged<bool> onHighlightChanged;

final _i44.ValueChanged<bool> onHover;

final _i32.MouseCursor mouseCursor;

final _i5.Color focusColor;

final _i5.Color hoverColor;

final _i5.Color highlightColor;

final _i169.WidgetStateProperty<_i5.Color> overlayColor;

final _i5.Color splashColor;

final _i170.InteractiveInkFeatureFactory splashFactory;

final double radius;

final _i8.BorderRadius borderRadius;

final _i94.ShapeBorder customBorder;

final bool enableFeedback;

final bool excludeFromSemantics;

final _i43.FocusNode focusNode;

final bool canRequestFocus;

final _i44.ValueChanged<bool> onFocusChange;

final bool autofocus;

final _i169.WidgetStatesController statesController;

final Duration hoverDuration;

_i1.Widget build(_i1.BuildContext context) { return
_i4.InkWell
(); } 
 }
class $ElevatedButton extends _i1.StatelessWidget {$ElevatedButton(this.onPressed, this.child, {this.key, this.onLongPress, this.onHover, this.onFocusChange, this.style, this.focusNode, this.autofocus, this.clipBehavior, this.statesController, this.iconAlignment, });

final _i2.Key key;

final _i5.VoidCallback onPressed;

final _i5.VoidCallback onLongPress;

final _i44.ValueChanged<bool> onHover;

final _i44.ValueChanged<bool> onFocusChange;

final _i154.ButtonStyle style;

final _i43.FocusNode focusNode;

final bool autofocus;

final _i5.Clip clipBehavior;

final _i169.WidgetStatesController statesController;

final _i3.Widget child;

final _i171.IconAlignment iconAlignment;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ElevatedButton
(); } 
 }
class $ElevatedButtonTheme extends _i1.StatelessWidget {$ElevatedButtonTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i172.ElevatedButtonThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ElevatedButtonTheme
(); } 
 }
class $FilledButton extends _i1.StatelessWidget {$FilledButton(this.onPressed, this.child, {this.key, this.onLongPress, this.onHover, this.onFocusChange, this.style, this.focusNode, this.autofocus, this.clipBehavior, this.statesController, this.iconAlignment, });

final _i2.Key key;

final _i5.VoidCallback onPressed;

final _i5.VoidCallback onLongPress;

final _i44.ValueChanged<bool> onHover;

final _i44.ValueChanged<bool> onFocusChange;

final _i154.ButtonStyle style;

final _i43.FocusNode focusNode;

final bool autofocus;

final _i5.Clip clipBehavior;

final _i169.WidgetStatesController statesController;

final _i3.Widget child;

final _i171.IconAlignment iconAlignment;

_i1.Widget build(_i1.BuildContext context) { return
_i4.FilledButton
(); } 
 }
class $FilledButtonTheme extends _i1.StatelessWidget {$FilledButtonTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i173.FilledButtonThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.FilledButtonTheme
(); } 
 }
class $OutlinedButton extends _i1.StatelessWidget {$OutlinedButton(this.onPressed, this.child, {this.key, this.onLongPress, this.onHover, this.onFocusChange, this.style, this.focusNode, this.autofocus, this.clipBehavior, this.statesController, this.iconAlignment, });

final _i2.Key key;

final _i5.VoidCallback onPressed;

final _i5.VoidCallback onLongPress;

final _i44.ValueChanged<bool> onHover;

final _i44.ValueChanged<bool> onFocusChange;

final _i154.ButtonStyle style;

final _i43.FocusNode focusNode;

final bool autofocus;

final _i5.Clip clipBehavior;

final _i169.WidgetStatesController statesController;

final _i3.Widget child;

final _i171.IconAlignment iconAlignment;

_i1.Widget build(_i1.BuildContext context) { return
_i4.OutlinedButton
(); } 
 }
class $OutlinedButtonTheme extends _i1.StatelessWidget {$OutlinedButtonTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i174.OutlinedButtonThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.OutlinedButtonTheme
(); } 
 }
class $TextButton extends _i1.StatelessWidget {$TextButton(this.onPressed, this.child, {this.key, this.onLongPress, this.onHover, this.onFocusChange, this.style, this.focusNode, this.autofocus, this.clipBehavior, this.statesController, this.isSemanticButton, this.iconAlignment, });

final _i2.Key key;

final _i5.VoidCallback onPressed;

final _i5.VoidCallback onLongPress;

final _i44.ValueChanged<bool> onHover;

final _i44.ValueChanged<bool> onFocusChange;

final _i154.ButtonStyle style;

final _i43.FocusNode focusNode;

final bool autofocus;

final _i5.Clip clipBehavior;

final _i169.WidgetStatesController statesController;

final bool isSemanticButton;

final _i3.Widget child;

final _i171.IconAlignment iconAlignment;

_i1.Widget build(_i1.BuildContext context) { return
_i4.TextButton
(); } 
 }
class $TextButtonTheme extends _i1.StatelessWidget {$TextButtonTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i175.TextButtonThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.TextButtonTheme
(); } 
 }
class $IconButtonTheme extends _i1.StatelessWidget {$IconButtonTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i176.IconButtonThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.IconButtonTheme
(); } 
 }
class $Tooltip extends _i1.StatelessWidget {$Tooltip({this.key, this.message, this.richMessage, this.height, this.padding, this.margin, this.verticalOffset, this.preferBelow, this.excludeFromSemantics, this.decoration, this.textStyle, this.textAlign, this.waitDuration, this.showDuration, this.exitDuration, this.enableTapToDismiss, this.triggerMode, this.enableFeedback, this.onTriggered, this.child, });

final _i2.Key key;

final String message;

final _i23.InlineSpan richMessage;

final double height;

final _i14.EdgeInsetsGeometry padding;

final _i14.EdgeInsetsGeometry margin;

final double verticalOffset;

final bool preferBelow;

final bool excludeFromSemantics;

final _i67.Decoration decoration;

final _i38.TextStyle textStyle;

final _i5.TextAlign textAlign;

final Duration waitDuration;

final Duration showDuration;

final Duration exitDuration;

final bool enableTapToDismiss;

final _i177.TooltipTriggerMode triggerMode;

final bool enableFeedback;

final _i178.TooltipTriggeredCallback onTriggered;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Tooltip
(); } 
 }
class $TooltipTheme extends _i1.StatelessWidget {$TooltipTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i177.TooltipThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.TooltipTheme
(); } 
 }
class $TooltipVisibility extends _i1.StatelessWidget {$TooltipVisibility(this.visible, this.child, {this.key, });

final _i2.Key key;

final bool visible;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.TooltipVisibility
(); } 
 }
class $Ink extends _i1.StatelessWidget {$Ink({this.key, this.padding, this.color, this.decoration, this.width, this.height, this.child, });

final _i2.Key key;

final _i14.EdgeInsetsGeometry padding;

final _i5.Color color;

final _i67.Decoration decoration;

final double width;

final double height;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Ink
(); } 
 }
class $ListTileTheme extends _i1.StatelessWidget {$ListTileTheme(this.child, {this.key, this.data, this.dense, this.shape, this.style, this.selectedColor, this.iconColor, this.textColor, this.contentPadding, this.tileColor, this.selectedTileColor, this.enableFeedback, this.mouseCursor, this.horizontalTitleGap, this.minVerticalPadding, this.minLeadingWidth, });

final _i2.Key key;

final _i179.ListTileThemeData data;

final bool dense;

final _i94.ShapeBorder shape;

final _i168.ListTileStyle style;

final _i5.Color selectedColor;

final _i5.Color iconColor;

final _i5.Color textColor;

final _i14.EdgeInsetsGeometry contentPadding;

final _i5.Color tileColor;

final _i5.Color selectedTileColor;

final bool enableFeedback;

final _i169.WidgetStateProperty<_i32.MouseCursor> mouseCursor;

final double horizontalTitleGap;

final double minVerticalPadding;

final double minLeadingWidth;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ListTileTheme
(); } 
 }
class $FlexibleSpaceBar extends _i1.StatelessWidget {$FlexibleSpaceBar({this.key, this.title, this.background, this.centerTitle, this.titlePadding, this.collapseMode, this.stretchModes, this.expandedTitleScale, });

final _i2.Key key;

final _i3.Widget title;

final _i3.Widget background;

final bool centerTitle;

final _i14.EdgeInsetsGeometry titlePadding;

final _i180.CollapseMode collapseMode;

final List<_i180.StretchMode> stretchModes;

final double expandedTitleScale;

_i1.Widget build(_i1.BuildContext context) { return
_i4.FlexibleSpaceBar
(); } 
 }
class $FlexibleSpaceBarSettings extends _i1.StatelessWidget {$FlexibleSpaceBarSettings(this.toolbarOpacity, this.minExtent, this.maxExtent, this.currentExtent, this.child, {this.key, this.isScrolledUnder, this.hasLeading, });

final _i2.Key key;

final double toolbarOpacity;

final double minExtent;

final double maxExtent;

final double currentExtent;

final _i3.Widget child;

final bool isScrolledUnder;

final bool hasLeading;

_i1.Widget build(_i1.BuildContext context) { return
_i4.FlexibleSpaceBarSettings
(); } 
 }
class $FloatingActionButton extends _i1.StatelessWidget {$FloatingActionButton(this.onPressed, {this.key, this.child, this.tooltip, this.foregroundColor, this.backgroundColor, this.focusColor, this.hoverColor, this.splashColor, this.heroTag, this.elevation, this.focusElevation, this.hoverElevation, this.highlightElevation, this.disabledElevation, this.mouseCursor, this.mini, this.shape, this.clipBehavior, this.focusNode, this.autofocus, this.materialTapTargetSize, this.isExtended, this.enableFeedback, });

final _i2.Key key;

final _i3.Widget child;

final String tooltip;

final _i5.Color foregroundColor;

final _i5.Color backgroundColor;

final _i5.Color focusColor;

final _i5.Color hoverColor;

final _i5.Color splashColor;

final Object heroTag;

final double elevation;

final double focusElevation;

final double hoverElevation;

final double highlightElevation;

final double disabledElevation;

final _i5.VoidCallback onPressed;

final _i32.MouseCursor mouseCursor;

final bool mini;

final _i94.ShapeBorder shape;

final _i5.Clip clipBehavior;

final _i43.FocusNode focusNode;

final bool autofocus;

final _i156.MaterialTapTargetSize materialTapTargetSize;

final bool isExtended;

final bool enableFeedback;

_i1.Widget build(_i1.BuildContext context) { return
_i4.FloatingActionButton
(); } 
 }
class $RawMaterialButton extends _i1.StatelessWidget {$RawMaterialButton(this.onPressed, {this.key, this.onLongPress, this.onHighlightChanged, this.mouseCursor, this.textStyle, this.fillColor, this.focusColor, this.hoverColor, this.highlightColor, this.splashColor, this.elevation, this.focusElevation, this.hoverElevation, this.highlightElevation, this.disabledElevation, this.padding, this.visualDensity, this.constraints, this.shape, this.animationDuration, this.clipBehavior, this.focusNode, this.autofocus, this.materialTapTargetSize, this.child, this.enableFeedback, });

final _i2.Key key;

final _i5.VoidCallback onPressed;

final _i5.VoidCallback onLongPress;

final _i44.ValueChanged<bool> onHighlightChanged;

final _i32.MouseCursor mouseCursor;

final _i38.TextStyle textStyle;

final _i5.Color fillColor;

final _i5.Color focusColor;

final _i5.Color hoverColor;

final _i5.Color highlightColor;

final _i5.Color splashColor;

final double elevation;

final double focusElevation;

final double hoverElevation;

final double highlightElevation;

final double disabledElevation;

final _i14.EdgeInsetsGeometry padding;

final _i156.VisualDensity visualDensity;

final _i17.BoxConstraints constraints;

final _i94.ShapeBorder shape;

final Duration animationDuration;

final _i5.Clip clipBehavior;

final _i43.FocusNode focusNode;

final bool autofocus;

final _i156.MaterialTapTargetSize materialTapTargetSize;

final _i3.Widget child;

final bool enableFeedback;

_i1.Widget build(_i1.BuildContext context) { return
_i4.RawMaterialButton
(); } 
 }
class $ButtonTheme extends _i1.StatelessWidget {$ButtonTheme(this.child, {this.key, this.textTheme, this.layoutBehavior, this.minWidth, this.height, this.padding, this.shape, this.alignedDropdown, this.buttonColor, this.disabledColor, this.focusColor, this.hoverColor, this.highlightColor, this.splashColor, this.colorScheme, this.materialTapTargetSize, });

final _i2.Key key;

final _i181.ButtonTextTheme textTheme;

final _i181.ButtonBarLayoutBehavior layoutBehavior;

final double minWidth;

final double height;

final _i14.EdgeInsetsGeometry padding;

final _i94.ShapeBorder shape;

final bool alignedDropdown;

final _i5.Color buttonColor;

final _i5.Color disabledColor;

final _i5.Color focusColor;

final _i5.Color hoverColor;

final _i5.Color highlightColor;

final _i5.Color splashColor;

final _i182.ColorScheme colorScheme;

final _i156.MaterialTapTargetSize materialTapTargetSize;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ButtonTheme
(); } 
 }
class $MaterialButton extends _i1.StatelessWidget {$MaterialButton(this.onPressed, {this.key, this.onLongPress, this.onHighlightChanged, this.mouseCursor, this.textTheme, this.textColor, this.disabledTextColor, this.color, this.disabledColor, this.focusColor, this.hoverColor, this.highlightColor, this.splashColor, this.colorBrightness, this.elevation, this.focusElevation, this.hoverElevation, this.highlightElevation, this.disabledElevation, this.padding, this.visualDensity, this.shape, this.clipBehavior, this.focusNode, this.autofocus, this.materialTapTargetSize, this.animationDuration, this.minWidth, this.height, this.enableFeedback, this.child, });

final _i2.Key key;

final _i5.VoidCallback onPressed;

final _i5.VoidCallback onLongPress;

final _i44.ValueChanged<bool> onHighlightChanged;

final _i32.MouseCursor mouseCursor;

final _i181.ButtonTextTheme textTheme;

final _i5.Color textColor;

final _i5.Color disabledTextColor;

final _i5.Color color;

final _i5.Color disabledColor;

final _i5.Color focusColor;

final _i5.Color hoverColor;

final _i5.Color highlightColor;

final _i5.Color splashColor;

final _i5.Brightness colorBrightness;

final double elevation;

final double focusElevation;

final double hoverElevation;

final double highlightElevation;

final double disabledElevation;

final _i14.EdgeInsetsGeometry padding;

final _i156.VisualDensity visualDensity;

final _i94.ShapeBorder shape;

final _i5.Clip clipBehavior;

final _i43.FocusNode focusNode;

final bool autofocus;

final _i156.MaterialTapTargetSize materialTapTargetSize;

final Duration animationDuration;

final double minWidth;

final double height;

final bool enableFeedback;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.MaterialButton
(); } 
 }
class $SnackBarAction extends _i1.StatelessWidget {$SnackBarAction(this.label, this.onPressed, {this.key, this.textColor, this.disabledTextColor, this.backgroundColor, this.disabledBackgroundColor, });

final _i2.Key key;

final _i5.Color textColor;

final _i5.Color disabledTextColor;

final _i5.Color backgroundColor;

final _i5.Color disabledBackgroundColor;

final String label;

final _i5.VoidCallback onPressed;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SnackBarAction
(); } 
 }
class $SnackBar extends _i1.StatelessWidget {$SnackBar(this.content, {this.key, this.backgroundColor, this.elevation, this.margin, this.padding, this.width, this.shape, this.hitTestBehavior, this.behavior, this.action, this.actionOverflowThreshold, this.showCloseIcon, this.closeIconColor, this.duration, this.animation, this.onVisible, this.dismissDirection, this.clipBehavior, });

final _i2.Key key;

final _i3.Widget content;

final _i5.Color backgroundColor;

final double elevation;

final _i14.EdgeInsetsGeometry margin;

final _i14.EdgeInsetsGeometry padding;

final double width;

final _i94.ShapeBorder shape;

final _i6.HitTestBehavior hitTestBehavior;

final _i183.SnackBarBehavior behavior;

final _i184.SnackBarAction action;

final double actionOverflowThreshold;

final bool showCloseIcon;

final _i5.Color closeIconColor;

final Duration duration;

final _i28.Animation<double> animation;

final _i5.VoidCallback onVisible;

final _i127.DismissDirection dismissDirection;

final _i5.Clip clipBehavior;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SnackBar
(); } 
 }
class $ButtonBarTheme extends _i1.StatelessWidget {$ButtonBarTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i185.ButtonBarThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ButtonBarTheme
(); } 
 }
class $CheckboxTheme extends _i1.StatelessWidget {$CheckboxTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i186.CheckboxThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CheckboxTheme
(); } 
 }
class $ChipTheme extends _i1.StatelessWidget {$ChipTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i187.ChipThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ChipTheme
(); } 
 }
class $DataTableTheme extends _i1.StatelessWidget {$DataTableTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i188.DataTableThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DataTableTheme
(); } 
 }
class $DatePickerTheme extends _i1.StatelessWidget {$DatePickerTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i189.DatePickerThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DatePickerTheme
(); } 
 }
class $InputDecorator extends _i1.StatelessWidget {$InputDecorator(this.decoration, {this.key, this.baseStyle, this.textAlign, this.textAlignVertical, this.isFocused, this.isHovering, this.expands, this.isEmpty, this.child, });

final _i2.Key key;

final _i190.InputDecoration decoration;

final _i38.TextStyle baseStyle;

final _i5.TextAlign textAlign;

final _i11.TextAlignVertical textAlignVertical;

final bool isFocused;

final bool isHovering;

final bool expands;

final bool isEmpty;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.InputDecorator
(); } 
 }
class $DropdownMenuTheme extends _i1.StatelessWidget {$DropdownMenuTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i191.DropdownMenuThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DropdownMenuTheme
(); } 
 }
class $MenuAnchor extends _i1.StatelessWidget {$MenuAnchor(this.menuChildren, {this.key, this.controller, this.childFocusNode, this.style, this.alignmentOffset, this.clipBehavior, this.anchorTapClosesMenu, this.consumeOutsideTap, this.onOpen, this.onClose, this.crossAxisUnconstrained, this.builder, this.child, });

final _i2.Key key;

final _i192.MenuController controller;

final _i43.FocusNode childFocusNode;

final _i193.MenuStyle style;

final _i5.Offset alignmentOffset;

final _i5.Clip clipBehavior;

final bool anchorTapClosesMenu;

final bool consumeOutsideTap;

final _i5.VoidCallback onOpen;

final _i5.VoidCallback onClose;

final bool crossAxisUnconstrained;

final List<_i3.Widget> menuChildren;

final _i192.MenuAnchorChildBuilder builder;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.MenuAnchor
(); } 
 }
class $MenuBar extends _i1.StatelessWidget {$MenuBar(this.children, {this.key, this.style, this.clipBehavior, this.controller, });

final _i2.Key key;

final _i193.MenuStyle style;

final _i5.Clip clipBehavior;

final _i192.MenuController controller;

final List<_i3.Widget> children;

_i1.Widget build(_i1.BuildContext context) { return
_i4.MenuBar
(); } 
 }
class $MenuItemButton extends _i1.StatelessWidget {$MenuItemButton({this.key, this.onPressed, this.onHover, this.requestFocusOnHover, this.onFocusChange, this.focusNode, this.autofocus, this.shortcut, this.semanticsLabel, this.style, this.statesController, this.clipBehavior, this.leadingIcon, this.trailingIcon, this.closeOnActivate, this.overflowAxis, this.child, });

final _i2.Key key;

final _i5.VoidCallback onPressed;

final _i44.ValueChanged<bool> onHover;

final bool requestFocusOnHover;

final _i44.ValueChanged<bool> onFocusChange;

final _i43.FocusNode focusNode;

final bool autofocus;

final _i92.MenuSerializableShortcut shortcut;

final String semanticsLabel;

final _i154.ButtonStyle style;

final _i169.WidgetStatesController statesController;

final _i5.Clip clipBehavior;

final _i3.Widget leadingIcon;

final _i3.Widget trailingIcon;

final bool closeOnActivate;

final _i18.Axis overflowAxis;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.MenuItemButton
(); } 
 }
class $CheckboxMenuButton extends _i1.StatelessWidget {$CheckboxMenuButton(this.value, this.onChanged, this.child, {this.key, this.tristate, this.isError, this.onHover, this.onFocusChange, this.focusNode, this.shortcut, this.style, this.statesController, this.clipBehavior, this.trailingIcon, this.closeOnActivate, });

final _i2.Key key;

final bool value;

final bool tristate;

final bool isError;

final _i44.ValueChanged<bool> onChanged;

final _i44.ValueChanged<bool> onHover;

final _i44.ValueChanged<bool> onFocusChange;

final _i43.FocusNode focusNode;

final _i92.MenuSerializableShortcut shortcut;

final _i154.ButtonStyle style;

final _i169.WidgetStatesController statesController;

final _i5.Clip clipBehavior;

final _i3.Widget trailingIcon;

final bool closeOnActivate;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CheckboxMenuButton
(); } 
 }
class $RadioMenuButton extends _i1.StatelessWidget {$RadioMenuButton(this.value, this.groupValue, this.onChanged, this.child, {this.key, this.toggleable, this.onHover, this.onFocusChange, this.focusNode, this.shortcut, this.style, this.statesController, this.clipBehavior, this.trailingIcon, this.closeOnActivate, });

final _i2.Key key;

final T value;

final T groupValue;

final _i44.ValueChanged<T> onChanged;

final bool toggleable;

final _i44.ValueChanged<bool> onHover;

final _i44.ValueChanged<bool> onFocusChange;

final _i43.FocusNode focusNode;

final _i92.MenuSerializableShortcut shortcut;

final _i154.ButtonStyle style;

final _i169.WidgetStatesController statesController;

final _i5.Clip clipBehavior;

final _i3.Widget trailingIcon;

final bool closeOnActivate;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.RadioMenuButton
(); } 
 }
class $SubmenuButton extends _i1.StatelessWidget {$SubmenuButton(this.menuChildren, this.child, {this.key, this.onHover, this.onFocusChange, this.onOpen, this.onClose, this.controller, this.style, this.menuStyle, this.alignmentOffset, this.clipBehavior, this.focusNode, this.statesController, this.leadingIcon, this.trailingIcon, });

final _i2.Key key;

final _i44.ValueChanged<bool> onHover;

final _i44.ValueChanged<bool> onFocusChange;

final _i5.VoidCallback onOpen;

final _i5.VoidCallback onClose;

final _i192.MenuController controller;

final _i154.ButtonStyle style;

final _i193.MenuStyle menuStyle;

final _i5.Offset alignmentOffset;

final _i5.Clip clipBehavior;

final _i43.FocusNode focusNode;

final _i169.WidgetStatesController statesController;

final _i3.Widget leadingIcon;

final _i3.Widget trailingIcon;

final List<_i3.Widget> menuChildren;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SubmenuButton
(); } 
 }
class $MenuAcceleratorCallbackBinding extends _i1.StatelessWidget {$MenuAcceleratorCallbackBinding(this.child, {this.key, this.onInvoke, this.hasSubmenu, });

final _i2.Key key;

final _i5.VoidCallback onInvoke;

final bool hasSubmenu;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.MenuAcceleratorCallbackBinding
(); } 
 }
class $MenuAcceleratorLabel extends _i1.StatelessWidget {$MenuAcceleratorLabel(this.label, {this.key, this.builder, });

final String label;

final _i2.Key key;

final _i192.MenuAcceleratorChildBuilder builder;

_i1.Widget build(_i1.BuildContext context) { return
_i4.MenuAcceleratorLabel
(); } 
 }
class $Checkbox extends _i1.StatelessWidget {$Checkbox(this.value, this.onChanged, {this.key, this.tristate, this.mouseCursor, this.activeColor, this.fillColor, this.checkColor, this.focusColor, this.hoverColor, this.overlayColor, this.splashRadius, this.materialTapTargetSize, this.visualDensity, this.focusNode, this.autofocus, this.shape, this.side, this.isError, this.semanticLabel, });

final _i2.Key key;

final bool value;

final bool tristate;

final _i44.ValueChanged<bool> onChanged;

final _i32.MouseCursor mouseCursor;

final _i5.Color activeColor;

final _i169.WidgetStateProperty<_i5.Color> fillColor;

final _i5.Color checkColor;

final _i5.Color focusColor;

final _i5.Color hoverColor;

final _i169.WidgetStateProperty<_i5.Color> overlayColor;

final double splashRadius;

final _i156.MaterialTapTargetSize materialTapTargetSize;

final _i156.VisualDensity visualDensity;

final _i43.FocusNode focusNode;

final bool autofocus;

final _i94.OutlinedBorder shape;

final _i94.BorderSide side;

final bool isError;

final String semanticLabel;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Checkbox
(); } 
 }
class $MenuBarTheme extends _i1.StatelessWidget {$MenuBarTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i194.MenuBarThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.MenuBarTheme
(); } 
 }
class $MenuTheme extends _i1.StatelessWidget {$MenuTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i195.MenuThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.MenuTheme
(); } 
 }
class $MenuButtonTheme extends _i1.StatelessWidget {$MenuButtonTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i196.MenuButtonThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.MenuButtonTheme
(); } 
 }
class $Radio extends _i1.StatelessWidget {$Radio(this.value, this.groupValue, this.onChanged, {this.key, this.mouseCursor, this.toggleable, this.activeColor, this.fillColor, this.focusColor, this.hoverColor, this.overlayColor, this.splashRadius, this.materialTapTargetSize, this.visualDensity, this.focusNode, this.autofocus, });

final _i2.Key key;

final T value;

final T groupValue;

final _i44.ValueChanged<T> onChanged;

final _i32.MouseCursor mouseCursor;

final bool toggleable;

final _i5.Color activeColor;

final _i169.WidgetStateProperty<_i5.Color> fillColor;

final _i5.Color focusColor;

final _i5.Color hoverColor;

final _i169.WidgetStateProperty<_i5.Color> overlayColor;

final double splashRadius;

final _i156.MaterialTapTargetSize materialTapTargetSize;

final _i156.VisualDensity visualDensity;

final _i43.FocusNode focusNode;

final bool autofocus;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Radio
(); } 
 }
class $RadioTheme extends _i1.StatelessWidget {$RadioTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i197.RadioThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.RadioTheme
(); } 
 }
class $Scrollbar extends _i1.StatelessWidget {$Scrollbar(this.child, {this.key, this.controller, this.thumbVisibility, this.trackVisibility, this.thickness, this.radius, this.notificationPredicate, this.interactive, this.scrollbarOrientation, });

final _i2.Key key;

final _i3.Widget child;

final _i52.ScrollController controller;

final bool thumbVisibility;

final bool trackVisibility;

final double thickness;

final _i5.Radius radius;

final _i65.ScrollNotificationPredicate notificationPredicate;

final bool interactive;

final _i95.ScrollbarOrientation scrollbarOrientation;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Scrollbar
(); } 
 }
class $ScrollbarTheme extends _i1.StatelessWidget {$ScrollbarTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i198.ScrollbarThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ScrollbarTheme
(); } 
 }
class $ExpansionTileTheme extends _i1.StatelessWidget {$ExpansionTileTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i199.ExpansionTileThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ExpansionTileTheme
(); } 
 }
class $NavigationBarTheme extends _i1.StatelessWidget {$NavigationBarTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i200.NavigationBarThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.NavigationBarTheme
(); } 
 }
class $NavigationBar extends _i1.StatelessWidget {$NavigationBar(this.destinations, {this.key, this.animationDuration, this.selectedIndex, this.onDestinationSelected, this.backgroundColor, this.elevation, this.shadowColor, this.surfaceTintColor, this.indicatorColor, this.indicatorShape, this.height, this.labelBehavior, this.overlayColor, });

final _i2.Key key;

final Duration animationDuration;

final int selectedIndex;

final List<_i3.Widget> destinations;

final _i44.ValueChanged<int> onDestinationSelected;

final _i5.Color backgroundColor;

final double elevation;

final _i5.Color shadowColor;

final _i5.Color surfaceTintColor;

final _i5.Color indicatorColor;

final _i94.ShapeBorder indicatorShape;

final double height;

final _i201.NavigationDestinationLabelBehavior labelBehavior;

final _i169.WidgetStateProperty<_i5.Color> overlayColor;

_i1.Widget build(_i1.BuildContext context) { return
_i4.NavigationBar
(); } 
 }
class $NavigationDestination extends _i1.StatelessWidget {$NavigationDestination(this.icon, this.label, {this.key, this.selectedIcon, this.tooltip, this.enabled, });

final _i2.Key key;

final _i3.Widget icon;

final _i3.Widget selectedIcon;

final String label;

final String tooltip;

final bool enabled;

_i1.Widget build(_i1.BuildContext context) { return
_i4.NavigationDestination
(); } 
 }
class $NavigationIndicator extends _i1.StatelessWidget {$NavigationIndicator(this.animation, {this.key, this.color, this.width, this.height, this.borderRadius, this.shape, });

final _i2.Key key;

final _i28.Animation<double> animation;

final _i5.Color color;

final double width;

final double height;

final _i8.BorderRadius borderRadius;

final _i94.ShapeBorder shape;

_i1.Widget build(_i1.BuildContext context) { return
_i4.NavigationIndicator
(); } 
 }
class $NavigationDrawerTheme extends _i1.StatelessWidget {$NavigationDrawerTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i202.NavigationDrawerThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.NavigationDrawerTheme
(); } 
 }
class $NavigationDrawer extends _i1.StatelessWidget {$NavigationDrawer(this.children, {this.key, this.backgroundColor, this.shadowColor, this.surfaceTintColor, this.elevation, this.indicatorColor, this.indicatorShape, this.onDestinationSelected, this.selectedIndex, this.tilePadding, });

final _i2.Key key;

final List<_i3.Widget> children;

final _i5.Color backgroundColor;

final _i5.Color shadowColor;

final _i5.Color surfaceTintColor;

final double elevation;

final _i5.Color indicatorColor;

final _i94.ShapeBorder indicatorShape;

final _i44.ValueChanged<int> onDestinationSelected;

final int selectedIndex;

final _i14.EdgeInsetsGeometry tilePadding;

_i1.Widget build(_i1.BuildContext context) { return
_i4.NavigationDrawer
(); } 
 }
class $NavigationDrawerDestination extends _i1.StatelessWidget {$NavigationDrawerDestination(this.icon, this.label, {this.key, this.backgroundColor, this.selectedIcon, this.enabled, });

final _i2.Key key;

final _i5.Color backgroundColor;

final _i3.Widget icon;

final _i3.Widget selectedIcon;

final _i3.Widget label;

final bool enabled;

_i1.Widget build(_i1.BuildContext context) { return
_i4.NavigationDrawerDestination
(); } 
 }
class $NavigationRailTheme extends _i1.StatelessWidget {$NavigationRailTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i203.NavigationRailThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.NavigationRailTheme
(); } 
 }
class $NavigationRail extends _i1.StatelessWidget {$NavigationRail(this.destinations, this.selectedIndex, {this.key, this.backgroundColor, this.extended, this.leading, this.trailing, this.onDestinationSelected, this.elevation, this.groupAlignment, this.labelType, this.unselectedLabelTextStyle, this.selectedLabelTextStyle, this.unselectedIconTheme, this.selectedIconTheme, this.minWidth, this.minExtendedWidth, this.useIndicator, this.indicatorColor, this.indicatorShape, });

final _i2.Key key;

final _i5.Color backgroundColor;

final bool extended;

final _i3.Widget leading;

final _i3.Widget trailing;

final List<_i204.NavigationRailDestination> destinations;

final int selectedIndex;

final _i44.ValueChanged<int> onDestinationSelected;

final double elevation;

final double groupAlignment;

final _i204.NavigationRailLabelType labelType;

final _i38.TextStyle unselectedLabelTextStyle;

final _i38.TextStyle selectedLabelTextStyle;

final _i133.IconThemeData unselectedIconTheme;

final _i133.IconThemeData selectedIconTheme;

final double minWidth;

final double minExtendedWidth;

final bool useIndicator;

final _i5.Color indicatorColor;

final _i94.ShapeBorder indicatorShape;

_i1.Widget build(_i1.BuildContext context) { return
_i4.NavigationRail
(); } 
 }
class $PopupMenuTheme extends _i1.StatelessWidget {$PopupMenuTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i205.PopupMenuThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.PopupMenuTheme
(); } 
 }
class $ProgressIndicatorTheme extends _i1.StatelessWidget {$ProgressIndicatorTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i206.ProgressIndicatorThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ProgressIndicatorTheme
(); } 
 }
class $SearchBarTheme extends _i1.StatelessWidget {$SearchBarTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i207.SearchBarThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SearchBarTheme
(); } 
 }
class $SearchViewTheme extends _i1.StatelessWidget {$SearchViewTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i208.SearchViewThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SearchViewTheme
(); } 
 }
class $SegmentedButtonTheme extends _i1.StatelessWidget {$SegmentedButtonTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i209.SegmentedButtonThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SegmentedButtonTheme
(); } 
 }
class $SliderTheme extends _i1.StatelessWidget {$SliderTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i210.SliderThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SliderTheme
(); } 
 }
class $Slider extends _i1.StatelessWidget {$Slider(this.value, this.onChanged, {this.key, this.secondaryTrackValue, this.onChangeStart, this.onChangeEnd, this.min, this.max, this.divisions, this.label, this.activeColor, this.inactiveColor, this.secondaryActiveColor, this.thumbColor, this.overlayColor, this.mouseCursor, this.semanticFormatterCallback, this.focusNode, this.autofocus, this.allowedInteraction, });

final _i2.Key key;

final double value;

final double secondaryTrackValue;

final _i44.ValueChanged<double> onChanged;

final _i44.ValueChanged<double> onChangeStart;

final _i44.ValueChanged<double> onChangeEnd;

final double min;

final double max;

final int divisions;

final String label;

final _i5.Color activeColor;

final _i5.Color inactiveColor;

final _i5.Color secondaryActiveColor;

final _i5.Color thumbColor;

final _i169.WidgetStateProperty<_i5.Color> overlayColor;

final _i32.MouseCursor mouseCursor;

final _i210.SemanticFormatterCallback semanticFormatterCallback;

final _i43.FocusNode focusNode;

final bool autofocus;

final _i211.SliderInteraction allowedInteraction;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Slider
(); } 
 }
class $SwitchTheme extends _i1.StatelessWidget {$SwitchTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i212.SwitchThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SwitchTheme
(); } 
 }
class $Tab extends _i1.StatelessWidget {$Tab({this.key, this.text, this.icon, this.iconMargin, this.height, this.child, });

final _i2.Key key;

final String text;

final _i3.Widget icon;

final _i14.EdgeInsetsGeometry iconMargin;

final double height;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Tab
(); } 
 }
class $TabBar extends _i1.StatelessWidget {$TabBar(this.tabs, {this.key, this.controller, this.isScrollable, this.padding, this.indicatorColor, this.automaticIndicatorColorAdjustment, this.indicatorWeight, this.indicatorPadding, this.indicator, this.indicatorSize, this.dividerColor, this.dividerHeight, this.labelColor, this.labelStyle, this.labelPadding, this.unselectedLabelColor, this.unselectedLabelStyle, this.dragStartBehavior, this.overlayColor, this.mouseCursor, this.enableFeedback, this.onTap, this.physics, this.splashFactory, this.splashBorderRadius, this.tabAlignment, this.textScaler, });

final _i2.Key key;

final List<_i3.Widget> tabs;

final _i213.TabController controller;

final bool isScrollable;

final _i14.EdgeInsetsGeometry padding;

final _i5.Color indicatorColor;

final bool automaticIndicatorColorAdjustment;

final double indicatorWeight;

final _i14.EdgeInsetsGeometry indicatorPadding;

final _i67.Decoration indicator;

final _i214.TabBarIndicatorSize indicatorSize;

final _i5.Color dividerColor;

final double dividerHeight;

final _i5.Color labelColor;

final _i38.TextStyle labelStyle;

final _i14.EdgeInsetsGeometry labelPadding;

final _i5.Color unselectedLabelColor;

final _i38.TextStyle unselectedLabelStyle;

final _i56.DragStartBehavior dragStartBehavior;

final _i169.WidgetStateProperty<_i5.Color> overlayColor;

final _i32.MouseCursor mouseCursor;

final bool enableFeedback;

final _i44.ValueChanged<int> onTap;

final _i53.ScrollPhysics physics;

final _i170.InteractiveInkFeatureFactory splashFactory;

final _i8.BorderRadius splashBorderRadius;

final _i214.TabAlignment tabAlignment;

final _i25.TextScaler textScaler;

_i1.Widget build(_i1.BuildContext context) { return
_i4.TabBar
(); } 
 }
class $TabBarView extends _i1.StatelessWidget {$TabBarView(this.children, {this.key, this.controller, this.physics, this.dragStartBehavior, this.viewportFraction, this.clipBehavior, });

final _i2.Key key;

final List<_i3.Widget> children;

final _i213.TabController controller;

final _i53.ScrollPhysics physics;

final _i56.DragStartBehavior dragStartBehavior;

final double viewportFraction;

final _i5.Clip clipBehavior;

_i1.Widget build(_i1.BuildContext context) { return
_i4.TabBarView
(); } 
 }
class $TabPageSelectorIndicator extends _i1.StatelessWidget {$TabPageSelectorIndicator(this.backgroundColor, this.borderColor, this.size, {this.key, this.borderStyle, });

final _i2.Key key;

final _i5.Color backgroundColor;

final _i5.Color borderColor;

final double size;

final _i94.BorderStyle borderStyle;

_i1.Widget build(_i1.BuildContext context) { return
_i4.TabPageSelectorIndicator
(); } 
 }
class $TabPageSelector extends _i1.StatelessWidget {$TabPageSelector({this.key, this.controller, this.indicatorSize, this.color, this.selectedColor, this.borderStyle, });

final _i2.Key key;

final _i213.TabController controller;

final double indicatorSize;

final _i5.Color color;

final _i5.Color selectedColor;

final _i94.BorderStyle borderStyle;

_i1.Widget build(_i1.BuildContext context) { return
_i4.TabPageSelector
(); } 
 }
class $DefaultTabController extends _i1.StatelessWidget {$DefaultTabController(this.length, this.child, {this.key, this.initialIndex, this.animationDuration, });

final _i2.Key key;

final int length;

final int initialIndex;

final _i3.Widget child;

final Duration animationDuration;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DefaultTabController
(); } 
 }
class $TextSelectionTheme extends _i1.StatelessWidget {$TextSelectionTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i215.TextSelectionThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.TextSelectionTheme
(); } 
 }
class $TimePickerTheme extends _i1.StatelessWidget {$TimePickerTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i216.TimePickerThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.TimePickerTheme
(); } 
 }
class $ToggleButtonsTheme extends _i1.StatelessWidget {$ToggleButtonsTheme(this.data, this.child, {this.key, });

final _i2.Key key;

final _i217.ToggleButtonsThemeData data;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ToggleButtonsTheme
(); } 
 }
class $Card extends _i1.StatelessWidget {$Card({this.key, this.color, this.shadowColor, this.surfaceTintColor, this.elevation, this.shape, this.borderOnForeground, this.margin, this.clipBehavior, this.child, this.semanticContainer, });

final _i2.Key key;

final _i5.Color color;

final _i5.Color shadowColor;

final _i5.Color surfaceTintColor;

final double elevation;

final _i94.ShapeBorder shape;

final bool borderOnForeground;

final _i14.EdgeInsetsGeometry margin;

final _i5.Clip clipBehavior;

final _i3.Widget child;

final bool semanticContainer;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Card
(); } 
 }
class $Dialog extends _i1.StatelessWidget {$Dialog({this.key, this.backgroundColor, this.elevation, this.shadowColor, this.surfaceTintColor, this.insetAnimationDuration, this.insetAnimationCurve, this.insetPadding, this.clipBehavior, this.shape, this.alignment, this.child, });

final _i2.Key key;

final _i5.Color backgroundColor;

final double elevation;

final _i5.Color shadowColor;

final _i5.Color surfaceTintColor;

final Duration insetAnimationDuration;

final _i77.Curve insetAnimationCurve;

final _i14.EdgeInsets insetPadding;

final _i5.Clip clipBehavior;

final _i94.ShapeBorder shape;

final _i11.AlignmentGeometry alignment;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Dialog
(); } 
 }
class $AlertDialog extends _i1.StatelessWidget {$AlertDialog({this.key, this.icon, this.iconPadding, this.iconColor, this.title, this.titlePadding, this.titleTextStyle, this.content, this.contentPadding, this.contentTextStyle, this.actions, this.actionsPadding, this.actionsAlignment, this.actionsOverflowAlignment, this.actionsOverflowDirection, this.actionsOverflowButtonSpacing, this.buttonPadding, this.backgroundColor, this.elevation, this.shadowColor, this.surfaceTintColor, this.semanticLabel, this.insetPadding, this.clipBehavior, this.shape, this.alignment, this.scrollable, });

final _i2.Key key;

final _i3.Widget icon;

final _i14.EdgeInsetsGeometry iconPadding;

final _i5.Color iconColor;

final _i3.Widget title;

final _i14.EdgeInsetsGeometry titlePadding;

final _i38.TextStyle titleTextStyle;

final _i3.Widget content;

final _i14.EdgeInsetsGeometry contentPadding;

final _i38.TextStyle contentTextStyle;

final List<_i3.Widget> actions;

final _i14.EdgeInsetsGeometry actionsPadding;

final _i20.MainAxisAlignment actionsAlignment;

final _i138.OverflowBarAlignment actionsOverflowAlignment;

final _i18.VerticalDirection actionsOverflowDirection;

final double actionsOverflowButtonSpacing;

final _i14.EdgeInsetsGeometry buttonPadding;

final _i5.Color backgroundColor;

final double elevation;

final _i5.Color shadowColor;

final _i5.Color surfaceTintColor;

final String semanticLabel;

final _i14.EdgeInsets insetPadding;

final _i5.Clip clipBehavior;

final _i94.ShapeBorder shape;

final _i11.AlignmentGeometry alignment;

final bool scrollable;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AlertDialog
(); } 
 }
class $SimpleDialogOption extends _i1.StatelessWidget {$SimpleDialogOption({this.key, this.onPressed, this.padding, this.child, });

final _i2.Key key;

final _i5.VoidCallback onPressed;

final _i14.EdgeInsets padding;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SimpleDialogOption
(); } 
 }
class $SimpleDialog extends _i1.StatelessWidget {$SimpleDialog({this.key, this.title, this.titlePadding, this.titleTextStyle, this.children, this.contentPadding, this.backgroundColor, this.elevation, this.shadowColor, this.surfaceTintColor, this.semanticLabel, this.insetPadding, this.clipBehavior, this.shape, this.alignment, });

final _i2.Key key;

final _i3.Widget title;

final _i14.EdgeInsetsGeometry titlePadding;

final _i38.TextStyle titleTextStyle;

final List<_i3.Widget> children;

final _i14.EdgeInsetsGeometry contentPadding;

final _i5.Color backgroundColor;

final double elevation;

final _i5.Color shadowColor;

final _i5.Color surfaceTintColor;

final String semanticLabel;

final _i14.EdgeInsets insetPadding;

final _i5.Clip clipBehavior;

final _i94.ShapeBorder shape;

final _i11.AlignmentGeometry alignment;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SimpleDialog
(); } 
 }
class $LinearProgressIndicator extends _i1.StatelessWidget {$LinearProgressIndicator({this.key, this.value, this.backgroundColor, this.color, this.valueColor, this.minHeight, this.semanticsLabel, this.semanticsValue, this.borderRadius, });

final _i2.Key key;

final double value;

final _i5.Color backgroundColor;

final _i5.Color color;

final _i28.Animation<_i5.Color> valueColor;

final double minHeight;

final String semanticsLabel;

final String semanticsValue;

final _i8.BorderRadiusGeometry borderRadius;

_i1.Widget build(_i1.BuildContext context) { return
_i4.LinearProgressIndicator
(); } 
 }
class $CircularProgressIndicator extends _i1.StatelessWidget {$CircularProgressIndicator({this.key, this.value, this.backgroundColor, this.color, this.valueColor, this.strokeWidth, this.strokeAlign, this.semanticsLabel, this.semanticsValue, this.strokeCap, });

final _i2.Key key;

final double value;

final _i5.Color backgroundColor;

final _i5.Color color;

final _i28.Animation<_i5.Color> valueColor;

final double strokeWidth;

final double strokeAlign;

final String semanticsLabel;

final String semanticsValue;

final _i5.StrokeCap strokeCap;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CircularProgressIndicator
(); } 
 }
class $RefreshProgressIndicator extends _i1.StatelessWidget {$RefreshProgressIndicator({this.key, this.value, this.backgroundColor, this.color, this.valueColor, this.strokeWidth, this.strokeAlign, this.semanticsLabel, this.semanticsValue, this.strokeCap, this.elevation, this.indicatorMargin, this.indicatorPadding, });

final _i2.Key key;

final double value;

final _i5.Color backgroundColor;

final _i5.Color color;

final _i28.Animation<_i5.Color> valueColor;

final double strokeWidth;

final double strokeAlign;

final String semanticsLabel;

final String semanticsValue;

final _i5.StrokeCap strokeCap;

final double elevation;

final _i14.EdgeInsetsGeometry indicatorMargin;

final _i14.EdgeInsetsGeometry indicatorPadding;

_i1.Widget build(_i1.BuildContext context) { return
_i4.RefreshProgressIndicator
(); } 
 }
class $ActionChip extends _i1.StatelessWidget {$ActionChip(this.label, {this.key, this.avatar, this.labelStyle, this.labelPadding, this.onPressed, this.pressElevation, this.tooltip, this.side, this.shape, this.clipBehavior, this.focusNode, this.autofocus, this.color, this.backgroundColor, this.disabledColor, this.padding, this.visualDensity, this.materialTapTargetSize, this.elevation, this.shadowColor, this.surfaceTintColor, this.iconTheme, this.avatarBoxConstraints, this.chipAnimationStyle, });

final _i2.Key key;

final _i3.Widget avatar;

final _i3.Widget label;

final _i38.TextStyle labelStyle;

final _i14.EdgeInsetsGeometry labelPadding;

final _i5.VoidCallback onPressed;

final double pressElevation;

final String tooltip;

final _i94.BorderSide side;

final _i94.OutlinedBorder shape;

final _i5.Clip clipBehavior;

final _i43.FocusNode focusNode;

final bool autofocus;

final _i169.WidgetStateProperty<_i5.Color> color;

final _i5.Color backgroundColor;

final _i5.Color disabledColor;

final _i14.EdgeInsetsGeometry padding;

final _i156.VisualDensity visualDensity;

final _i156.MaterialTapTargetSize materialTapTargetSize;

final double elevation;

final _i5.Color shadowColor;

final _i5.Color surfaceTintColor;

final _i133.IconThemeData iconTheme;

final _i17.BoxConstraints avatarBoxConstraints;

final _i218.ChipAnimationStyle chipAnimationStyle;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ActionChip
(); } 
 }
class $Chip extends _i1.StatelessWidget {$Chip(this.label, {this.key, this.avatar, this.labelStyle, this.labelPadding, this.deleteIcon, this.onDeleted, this.deleteIconColor, this.deleteButtonTooltipMessage, this.side, this.shape, this.clipBehavior, this.focusNode, this.autofocus, this.color, this.backgroundColor, this.padding, this.visualDensity, this.materialTapTargetSize, this.elevation, this.shadowColor, this.surfaceTintColor, this.iconTheme, this.avatarBoxConstraints, this.deleteIconBoxConstraints, this.chipAnimationStyle, });

final _i2.Key key;

final _i3.Widget avatar;

final _i3.Widget label;

final _i38.TextStyle labelStyle;

final _i14.EdgeInsetsGeometry labelPadding;

final _i3.Widget deleteIcon;

final _i5.VoidCallback onDeleted;

final _i5.Color deleteIconColor;

final String deleteButtonTooltipMessage;

final _i94.BorderSide side;

final _i94.OutlinedBorder shape;

final _i5.Clip clipBehavior;

final _i43.FocusNode focusNode;

final bool autofocus;

final _i169.WidgetStateProperty<_i5.Color> color;

final _i5.Color backgroundColor;

final _i14.EdgeInsetsGeometry padding;

final _i156.VisualDensity visualDensity;

final _i156.MaterialTapTargetSize materialTapTargetSize;

final double elevation;

final _i5.Color shadowColor;

final _i5.Color surfaceTintColor;

final _i133.IconThemeData iconTheme;

final _i17.BoxConstraints avatarBoxConstraints;

final _i17.BoxConstraints deleteIconBoxConstraints;

final _i218.ChipAnimationStyle chipAnimationStyle;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Chip
(); } 
 }
class $RawChip extends _i1.StatelessWidget {$RawChip(this.label, {this.key, this.defaultProperties, this.avatar, this.labelStyle, this.padding, this.visualDensity, this.labelPadding, this.deleteIcon, this.onDeleted, this.deleteIconColor, this.deleteButtonTooltipMessage, this.onPressed, this.onSelected, this.pressElevation, this.tapEnabled, this.selected, this.isEnabled, this.disabledColor, this.selectedColor, this.tooltip, this.side, this.shape, this.clipBehavior, this.focusNode, this.autofocus, this.color, this.backgroundColor, this.materialTapTargetSize, this.elevation, this.shadowColor, this.surfaceTintColor, this.iconTheme, this.selectedShadowColor, this.showCheckmark, this.checkmarkColor, this.avatarBorder, this.avatarBoxConstraints, this.deleteIconBoxConstraints, this.chipAnimationStyle, });

final _i2.Key key;

final _i187.ChipThemeData defaultProperties;

final _i3.Widget avatar;

final _i3.Widget label;

final _i38.TextStyle labelStyle;

final _i14.EdgeInsetsGeometry padding;

final _i156.VisualDensity visualDensity;

final _i14.EdgeInsetsGeometry labelPadding;

final _i3.Widget deleteIcon;

final _i5.VoidCallback onDeleted;

final _i5.Color deleteIconColor;

final String deleteButtonTooltipMessage;

final _i5.VoidCallback onPressed;

final _i44.ValueChanged<bool> onSelected;

final double pressElevation;

final bool tapEnabled;

final bool selected;

final bool isEnabled;

final _i5.Color disabledColor;

final _i5.Color selectedColor;

final String tooltip;

final _i94.BorderSide side;

final _i94.OutlinedBorder shape;

final _i5.Clip clipBehavior;

final _i43.FocusNode focusNode;

final bool autofocus;

final _i169.WidgetStateProperty<_i5.Color> color;

final _i5.Color backgroundColor;

final _i156.MaterialTapTargetSize materialTapTargetSize;

final double elevation;

final _i5.Color shadowColor;

final _i5.Color surfaceTintColor;

final _i133.IconThemeData iconTheme;

final _i5.Color selectedShadowColor;

final bool showCheckmark;

final _i5.Color checkmarkColor;

final _i94.ShapeBorder avatarBorder;

final _i17.BoxConstraints avatarBoxConstraints;

final _i17.BoxConstraints deleteIconBoxConstraints;

final _i218.ChipAnimationStyle chipAnimationStyle;

_i1.Widget build(_i1.BuildContext context) { return
_i4.RawChip
(); } 
 }
class $AdaptiveTextSelectionToolbar extends _i1.StatelessWidget {$AdaptiveTextSelectionToolbar(this.children, this.anchors, {this.key, });

final _i2.Key key;

final List<_i3.Widget> children;

final _i104.TextSelectionToolbarAnchors anchors;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AdaptiveTextSelectionToolbar
(); } 
 }
class $DesktopTextSelectionToolbar extends _i1.StatelessWidget {$DesktopTextSelectionToolbar(this.anchor, this.children, {this.key, });

final _i2.Key key;

final _i5.Offset anchor;

final List<_i3.Widget> children;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DesktopTextSelectionToolbar
(); } 
 }
class $TextSelectionToolbar extends _i1.StatelessWidget {$TextSelectionToolbar(this.anchorAbove, this.anchorBelow, this.children, {this.key, this.toolbarBuilder, });

final _i2.Key key;

final _i5.Offset anchorAbove;

final _i5.Offset anchorBelow;

final _i70.ToolbarBuilder toolbarBuilder;

final List<_i3.Widget> children;

_i1.Widget build(_i1.BuildContext context) { return
_i4.TextSelectionToolbar
(); } 
 }
class $DesktopTextSelectionToolbarButton extends _i1.StatelessWidget {$DesktopTextSelectionToolbarButton(this.onPressed, this.child, {this.key, });

final _i2.Key key;

final _i5.VoidCallback onPressed;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DesktopTextSelectionToolbarButton
(); } 
 }
class $TextSelectionToolbarTextButton extends _i1.StatelessWidget {$TextSelectionToolbarTextButton(this.child, this.padding, {this.key, this.onPressed, this.alignment, });

final _i2.Key key;

final _i3.Widget child;

final _i14.EdgeInsets padding;

final _i5.VoidCallback onPressed;

final _i11.AlignmentGeometry alignment;

_i1.Widget build(_i1.BuildContext context) { return
_i4.TextSelectionToolbarTextButton
(); } 
 }
class $AnimatedIcon extends _i1.StatelessWidget {$AnimatedIcon(this.icon, this.progress, {this.key, this.color, this.size, this.semanticLabel, this.textDirection, });

final _i2.Key key;

final _i219.AnimatedIconData icon;

final _i28.Animation<double> progress;

final _i5.Color color;

final double size;

final String semanticLabel;

final _i5.TextDirection textDirection;

_i1.Widget build(_i1.BuildContext context) { return
_i4.AnimatedIcon
(); } 
 }
class $MaterialApp extends _i1.StatelessWidget {$MaterialApp({this.key, this.navigatorKey, this.scaffoldMessengerKey, this.home, this.routes, this.initialRoute, this.onGenerateRoute, this.onGenerateInitialRoutes, this.onUnknownRoute, this.onNavigationNotification, this.navigatorObservers, this.builder, this.title, this.onGenerateTitle, this.color, this.theme, this.darkTheme, this.highContrastTheme, this.highContrastDarkTheme, this.themeMode, this.themeAnimationDuration, this.themeAnimationCurve, this.locale, this.localizationsDelegates, this.localeListResolutionCallback, this.localeResolutionCallback, this.supportedLocales, this.debugShowMaterialGrid, this.showPerformanceOverlay, this.checkerboardRasterCacheImages, this.checkerboardOffscreenLayers, this.showSemanticsDebugger, this.debugShowCheckedModeBanner, this.shortcuts, this.actions, this.restorationScopeId, this.scrollBehavior, this.useInheritedMediaQuery, this.themeAnimationStyle, });

final _i2.Key key;

final _i3.GlobalKey<_i35.NavigatorState> navigatorKey;

final _i3.GlobalKey<_i220.ScaffoldMessengerState> scaffoldMessengerKey;

final _i3.Widget home;

final Map<String,_i3.WidgetBuilder> routes;

final String initialRoute;

final _i35.RouteFactory onGenerateRoute;

final _i36.InitialRouteListFactory onGenerateInitialRoutes;

final _i35.RouteFactory onUnknownRoute;

final _i37.NotificationListenerCallback<_i35.NavigationNotification> onNavigationNotification;

final List<_i35.NavigatorObserver> navigatorObservers;

final _i3.TransitionBuilder builder;

final String title;

final _i36.GenerateAppTitle onGenerateTitle;

final _i5.Color color;

final _i156.ThemeData theme;

final _i156.ThemeData darkTheme;

final _i156.ThemeData highContrastTheme;

final _i156.ThemeData highContrastDarkTheme;

final _i221.ThemeMode themeMode;

final Duration themeAnimationDuration;

final _i77.Curve themeAnimationCurve;

final _i5.Locale locale;

final Iterable<_i39.LocalizationsDelegate<dynamic>> localizationsDelegates;

final _i36.LocaleListResolutionCallback localeListResolutionCallback;

final _i36.LocaleResolutionCallback localeResolutionCallback;

final Iterable<_i5.Locale> supportedLocales;

final bool debugShowMaterialGrid;

final bool showPerformanceOverlay;

final bool checkerboardRasterCacheImages;

final bool checkerboardOffscreenLayers;

final bool showSemanticsDebugger;

final bool debugShowCheckedModeBanner;

final Map<_i41.ShortcutActivator,_i42.Intent> shortcuts;

final Map<Type,_i42.Action<_i42.Intent>> actions;

final String restorationScopeId;

final _i57.ScrollBehavior scrollBehavior;

final bool useInheritedMediaQuery;

final _i148.AnimationStyle themeAnimationStyle;

_i1.Widget build(_i1.BuildContext context) { return
_i4.MaterialApp
(); } 
 }
class $Autocomplete extends _i1.StatelessWidget {$Autocomplete(this.optionsBuilder, {this.key, this.displayStringForOption, this.fieldViewBuilder, this.onSelected, this.optionsMaxHeight, this.optionsViewBuilder, this.optionsViewOpenDirection, this.initialValue, });

final _i2.Key key;

final _i126.AutocompleteOptionsBuilder<T> optionsBuilder;

final _i126.AutocompleteOptionToString<T> displayStringForOption;

final _i126.AutocompleteFieldViewBuilder fieldViewBuilder;

final _i126.AutocompleteOnSelected<T> onSelected;

final double optionsMaxHeight;

final _i126.AutocompleteOptionsViewBuilder<T> optionsViewBuilder;

final _i126.OptionsViewOpenDirection optionsViewOpenDirection;

final _i81.TextEditingValue initialValue;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Autocomplete
(); } 
 }
class $TextFormField extends _i1.StatelessWidget {$TextFormField({this.key, this.groupId, this.controller, this.initialValue, this.focusNode, this.forceErrorText, this.decoration, this.keyboardType, this.textCapitalization, this.textInputAction, this.style, this.strutStyle, this.textDirection, this.textAlign, this.textAlignVertical, this.autofocus, this.readOnly, this.toolbarOptions, this.showCursor, this.obscuringCharacter, this.obscureText, this.autocorrect, this.smartDashesType, this.smartQuotesType, this.enableSuggestions, this.maxLengthEnforcement, this.maxLines, this.minLines, this.expands, this.maxLength, this.onChanged, this.onTap, this.onTapAlwaysCalled, this.onTapOutside, this.onEditingComplete, this.onFieldSubmitted, this.onSaved, this.validator, this.inputFormatters, this.enabled, this.ignorePointers, this.cursorWidth, this.cursorHeight, this.cursorRadius, this.cursorColor, this.cursorErrorColor, this.keyboardAppearance, this.scrollPadding, this.enableInteractiveSelection, this.selectionControls, this.buildCounter, this.scrollPhysics, this.autofillHints, this.autovalidateMode, this.scrollController, this.restorationId, this.enableIMEPersonalizedLearning, this.mouseCursor, this.contextMenuBuilder, this.spellCheckConfiguration, this.magnifierConfiguration, this.undoController, this.onAppPrivateCommand, this.cursorOpacityAnimates, this.selectionHeightStyle, this.selectionWidthStyle, this.dragStartBehavior, this.contentInsertionConfiguration, this.statesController, this.clipBehavior, this.scribbleEnabled, this.canRequestFocus, });

final _i2.Key key;

final Object groupId;

final _i80.TextEditingController controller;

final String initialValue;

final _i43.FocusNode focusNode;

final String forceErrorText;

final _i190.InputDecoration decoration;

final _i81.TextInputType keyboardType;

final _i81.TextCapitalization textCapitalization;

final _i81.TextInputAction textInputAction;

final _i38.TextStyle style;

final _i26.StrutStyle strutStyle;

final _i5.TextDirection textDirection;

final _i5.TextAlign textAlign;

final _i11.TextAlignVertical textAlignVertical;

final bool autofocus;

final bool readOnly;

final _i80.ToolbarOptions toolbarOptions;

final bool showCursor;

final String obscuringCharacter;

final bool obscureText;

final bool autocorrect;

final _i81.SmartDashesType smartDashesType;

final _i81.SmartQuotesType smartQuotesType;

final bool enableSuggestions;

final _i83.MaxLengthEnforcement maxLengthEnforcement;

final int maxLines;

final int minLines;

final bool expands;

final int maxLength;

final _i44.ValueChanged<String> onChanged;

final _i58.GestureTapCallback onTap;

final bool onTapAlwaysCalled;

final _i82.TapRegionCallback onTapOutside;

final _i5.VoidCallback onEditingComplete;

final _i44.ValueChanged<String> onFieldSubmitted;

final _i120.FormFieldSetter<String> onSaved;

final _i120.FormFieldValidator<String> validator;

final List<_i83.TextInputFormatter> inputFormatters;

final bool enabled;

final bool ignorePointers;

final double cursorWidth;

final double cursorHeight;

final _i5.Radius cursorRadius;

final _i5.Color cursorColor;

final _i5.Color cursorErrorColor;

final _i5.Brightness keyboardAppearance;

final _i14.EdgeInsets scrollPadding;

final bool enableInteractiveSelection;

final _i70.TextSelectionControls selectionControls;

final _i222.InputCounterWidgetBuilder buildCounter;

final _i53.ScrollPhysics scrollPhysics;

final Iterable<String> autofillHints;

final _i120.AutovalidateMode autovalidateMode;

final _i52.ScrollController scrollController;

final String restorationId;

final bool enableIMEPersonalizedLearning;

final _i32.MouseCursor mouseCursor;

final _i80.EditableTextContextMenuBuilder contextMenuBuilder;

final _i85.SpellCheckConfiguration spellCheckConfiguration;

final _i71.TextMagnifierConfiguration magnifierConfiguration;

final _i86.UndoHistoryController undoController;

final _i80.AppPrivateCommandCallback onAppPrivateCommand;

final bool cursorOpacityAnimates;

final _i5.BoxHeightStyle selectionHeightStyle;

final _i5.BoxWidthStyle selectionWidthStyle;

final _i56.DragStartBehavior dragStartBehavior;

final _i80.ContentInsertionConfiguration contentInsertionConfiguration;

final _i169.WidgetStatesController statesController;

final _i5.Clip clipBehavior;

final bool scribbleEnabled;

final bool canRequestFocus;

_i1.Widget build(_i1.BuildContext context) { return
_i4.TextFormField
(); } 
 }
class $TextField extends _i1.StatelessWidget {$TextField({this.key, this.groupId, this.controller, this.focusNode, this.undoController, this.decoration, this.keyboardType, this.textInputAction, this.textCapitalization, this.style, this.strutStyle, this.textAlign, this.textAlignVertical, this.textDirection, this.readOnly, this.toolbarOptions, this.showCursor, this.autofocus, this.statesController, this.obscuringCharacter, this.obscureText, this.autocorrect, this.smartDashesType, this.smartQuotesType, this.enableSuggestions, this.maxLines, this.minLines, this.expands, this.maxLength, this.maxLengthEnforcement, this.onChanged, this.onEditingComplete, this.onSubmitted, this.onAppPrivateCommand, this.inputFormatters, this.enabled, this.ignorePointers, this.cursorWidth, this.cursorHeight, this.cursorRadius, this.cursorOpacityAnimates, this.cursorColor, this.cursorErrorColor, this.selectionHeightStyle, this.selectionWidthStyle, this.keyboardAppearance, this.scrollPadding, this.dragStartBehavior, this.enableInteractiveSelection, this.selectionControls, this.onTap, this.onTapAlwaysCalled, this.onTapOutside, this.mouseCursor, this.buildCounter, this.scrollController, this.scrollPhysics, this.autofillHints, this.contentInsertionConfiguration, this.clipBehavior, this.restorationId, this.scribbleEnabled, this.enableIMEPersonalizedLearning, this.contextMenuBuilder, this.canRequestFocus, this.spellCheckConfiguration, this.magnifierConfiguration, });

final _i2.Key key;

final Object groupId;

final _i80.TextEditingController controller;

final _i43.FocusNode focusNode;

final _i86.UndoHistoryController undoController;

final _i190.InputDecoration decoration;

final _i81.TextInputType keyboardType;

final _i81.TextInputAction textInputAction;

final _i81.TextCapitalization textCapitalization;

final _i38.TextStyle style;

final _i26.StrutStyle strutStyle;

final _i5.TextAlign textAlign;

final _i11.TextAlignVertical textAlignVertical;

final _i5.TextDirection textDirection;

final bool readOnly;

final _i80.ToolbarOptions toolbarOptions;

final bool showCursor;

final bool autofocus;

final _i169.WidgetStatesController statesController;

final String obscuringCharacter;

final bool obscureText;

final bool autocorrect;

final _i81.SmartDashesType smartDashesType;

final _i81.SmartQuotesType smartQuotesType;

final bool enableSuggestions;

final int maxLines;

final int minLines;

final bool expands;

final int maxLength;

final _i83.MaxLengthEnforcement maxLengthEnforcement;

final _i44.ValueChanged<String> onChanged;

final _i5.VoidCallback onEditingComplete;

final _i44.ValueChanged<String> onSubmitted;

final _i80.AppPrivateCommandCallback onAppPrivateCommand;

final List<_i83.TextInputFormatter> inputFormatters;

final bool enabled;

final bool ignorePointers;

final double cursorWidth;

final double cursorHeight;

final _i5.Radius cursorRadius;

final bool cursorOpacityAnimates;

final _i5.Color cursorColor;

final _i5.Color cursorErrorColor;

final _i5.BoxHeightStyle selectionHeightStyle;

final _i5.BoxWidthStyle selectionWidthStyle;

final _i5.Brightness keyboardAppearance;

final _i14.EdgeInsets scrollPadding;

final _i56.DragStartBehavior dragStartBehavior;

final bool enableInteractiveSelection;

final _i70.TextSelectionControls selectionControls;

final _i58.GestureTapCallback onTap;

final bool onTapAlwaysCalled;

final _i82.TapRegionCallback onTapOutside;

final _i32.MouseCursor mouseCursor;

final _i222.InputCounterWidgetBuilder buildCounter;

final _i52.ScrollController scrollController;

final _i53.ScrollPhysics scrollPhysics;

final Iterable<String> autofillHints;

final _i80.ContentInsertionConfiguration contentInsertionConfiguration;

final _i5.Clip clipBehavior;

final String restorationId;

final bool scribbleEnabled;

final bool enableIMEPersonalizedLearning;

final _i80.EditableTextContextMenuBuilder contextMenuBuilder;

final bool canRequestFocus;

final _i85.SpellCheckConfiguration spellCheckConfiguration;

final _i71.TextMagnifierConfiguration magnifierConfiguration;

_i1.Widget build(_i1.BuildContext context) { return
_i4.TextField
(); } 
 }
class $TextMagnifier extends _i1.StatelessWidget {$TextMagnifier(this.magnifierInfo, {this.key, });

final _i2.Key key;

final _i68.ValueNotifier<_i71.MagnifierInfo> magnifierInfo;

_i1.Widget build(_i1.BuildContext context) { return
_i4.TextMagnifier
(); } 
 }
class $Magnifier extends _i1.StatelessWidget {$Magnifier({this.key, this.additionalFocalPointOffset, this.borderRadius, this.filmColor, this.shadows, this.clipBehavior, this.size, });

final _i2.Key key;

final _i5.Offset additionalFocalPointOffset;

final _i8.BorderRadius borderRadius;

final _i5.Color filmColor;

final List<_i112.BoxShadow> shadows;

final _i5.Clip clipBehavior;

final _i5.Size size;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Magnifier
(); } 
 }
class $SelectableText extends _i1.StatelessWidget {$SelectableText(this.data, {this.key, this.focusNode, this.style, this.strutStyle, this.textAlign, this.textDirection, this.textScaleFactor, this.textScaler, this.showCursor, this.autofocus, this.toolbarOptions, this.minLines, this.maxLines, this.cursorWidth, this.cursorHeight, this.cursorRadius, this.cursorColor, this.selectionHeightStyle, this.selectionWidthStyle, this.dragStartBehavior, this.enableInteractiveSelection, this.selectionControls, this.onTap, this.scrollPhysics, this.semanticsLabel, this.textHeightBehavior, this.textWidthBasis, this.onSelectionChanged, this.contextMenuBuilder, this.magnifierConfiguration, });

final String data;

final _i2.Key key;

final _i43.FocusNode focusNode;

final _i38.TextStyle style;

final _i26.StrutStyle strutStyle;

final _i5.TextAlign textAlign;

final _i5.TextDirection textDirection;

final double textScaleFactor;

final _i25.TextScaler textScaler;

final bool showCursor;

final bool autofocus;

final _i80.ToolbarOptions toolbarOptions;

final int minLines;

final int maxLines;

final double cursorWidth;

final double cursorHeight;

final _i5.Radius cursorRadius;

final _i5.Color cursorColor;

final _i5.BoxHeightStyle selectionHeightStyle;

final _i5.BoxWidthStyle selectionWidthStyle;

final _i56.DragStartBehavior dragStartBehavior;

final bool enableInteractiveSelection;

final _i70.TextSelectionControls selectionControls;

final _i58.GestureTapCallback onTap;

final _i53.ScrollPhysics scrollPhysics;

final String semanticsLabel;

final _i5.TextHeightBehavior textHeightBehavior;

final _i24.TextWidthBasis textWidthBasis;

final _i80.SelectionChangedCallback onSelectionChanged;

final _i80.EditableTextContextMenuBuilder contextMenuBuilder;

final _i71.TextMagnifierConfiguration magnifierConfiguration;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SelectableText
(); } 
 }
class $SpellCheckSuggestionsToolbar extends _i1.StatelessWidget {$SpellCheckSuggestionsToolbar(this.anchor, this.buttonItems, {this.key, });

final _i2.Key key;

final _i5.Offset anchor;

final List<_i117.ContextMenuButtonItem> buttonItems;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SpellCheckSuggestionsToolbar
(); } 
 }
class $Badge extends _i1.StatelessWidget {$Badge({this.key, this.backgroundColor, this.textColor, this.smallSize, this.largeSize, this.textStyle, this.padding, this.alignment, this.offset, this.label, this.isLabelVisible, this.child, });

final _i2.Key key;

final _i5.Color backgroundColor;

final _i5.Color textColor;

final double smallSize;

final double largeSize;

final _i38.TextStyle textStyle;

final _i14.EdgeInsetsGeometry padding;

final _i11.AlignmentGeometry alignment;

final _i5.Offset offset;

final _i3.Widget label;

final bool isLabelVisible;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Badge
(); } 
 }
class $BottomAppBar extends _i1.StatelessWidget {$BottomAppBar({this.key, this.color, this.elevation, this.shape, this.clipBehavior, this.notchMargin, this.child, this.padding, this.surfaceTintColor, this.shadowColor, this.height, });

final _i2.Key key;

final _i5.Color color;

final double elevation;

final _i223.NotchedShape shape;

final _i5.Clip clipBehavior;

final double notchMargin;

final _i3.Widget child;

final _i14.EdgeInsetsGeometry padding;

final _i5.Color surfaceTintColor;

final _i5.Color shadowColor;

final double height;

_i1.Widget build(_i1.BuildContext context) { return
_i4.BottomAppBar
(); } 
 }
class $ButtonBar extends _i1.StatelessWidget {$ButtonBar({this.key, this.alignment, this.mainAxisSize, this.buttonTextTheme, this.buttonMinWidth, this.buttonHeight, this.buttonPadding, this.buttonAlignedDropdown, this.layoutBehavior, this.overflowDirection, this.overflowButtonSpacing, this.children, });

final _i2.Key key;

final _i20.MainAxisAlignment alignment;

final _i20.MainAxisSize mainAxisSize;

final _i181.ButtonTextTheme buttonTextTheme;

final double buttonMinWidth;

final double buttonHeight;

final _i14.EdgeInsetsGeometry buttonPadding;

final bool buttonAlignedDropdown;

final _i181.ButtonBarLayoutBehavior layoutBehavior;

final _i18.VerticalDirection overflowDirection;

final double overflowButtonSpacing;

final List<_i3.Widget> children;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ButtonBar
(); } 
 }
class $CalendarDatePicker extends _i1.StatelessWidget {$CalendarDatePicker(this.initialDate, this.firstDate, this.lastDate, this.onDateChanged, {this.key, this.currentDate, this.onDisplayedMonthChanged, this.initialCalendarMode, this.selectableDayPredicate, });

final _i2.Key key;

final DateTime initialDate;

final DateTime firstDate;

final DateTime lastDate;

final DateTime currentDate;

final _i44.ValueChanged<DateTime> onDateChanged;

final _i44.ValueChanged<DateTime> onDisplayedMonthChanged;

final _i224.DatePickerMode initialCalendarMode;

final _i224.SelectableDayPredicate selectableDayPredicate;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CalendarDatePicker
(); } 
 }
class $YearPicker extends _i1.StatelessWidget {$YearPicker(this.firstDate, this.lastDate, this.selectedDate, this.onChanged, {this.key, this.currentDate, this.initialDate, this.dragStartBehavior, });

final _i2.Key key;

final DateTime currentDate;

final DateTime firstDate;

final DateTime lastDate;

final DateTime initialDate;

final DateTime selectedDate;

final _i44.ValueChanged<DateTime> onChanged;

final _i56.DragStartBehavior dragStartBehavior;

_i1.Widget build(_i1.BuildContext context) { return
_i4.YearPicker
(); } 
 }
class $CarouselView extends _i1.StatelessWidget {$CarouselView(this.itemExtent, this.children, {this.key, this.padding, this.backgroundColor, this.elevation, this.shape, this.overlayColor, this.itemSnapping, this.shrinkExtent, this.controller, this.scrollDirection, this.reverse, this.onTap, });

final _i2.Key key;

final _i14.EdgeInsets padding;

final _i5.Color backgroundColor;

final double elevation;

final _i94.ShapeBorder shape;

final _i169.WidgetStateProperty<_i5.Color> overlayColor;

final bool itemSnapping;

final double shrinkExtent;

final _i225.CarouselController controller;

final _i18.Axis scrollDirection;

final bool reverse;

final _i44.ValueChanged<int> onTap;

final double itemExtent;

final List<_i3.Widget> children;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CarouselView
(); } 
 }
class $CheckboxListTile extends _i1.StatelessWidget {$CheckboxListTile(this.value, this.onChanged, {this.key, this.mouseCursor, this.activeColor, this.fillColor, this.checkColor, this.hoverColor, this.overlayColor, this.splashRadius, this.materialTapTargetSize, this.visualDensity, this.focusNode, this.autofocus, this.shape, this.side, this.isError, this.enabled, this.tileColor, this.title, this.subtitle, this.isThreeLine, this.dense, this.secondary, this.selected, this.controlAffinity, this.contentPadding, this.tristate, this.checkboxShape, this.selectedTileColor, this.onFocusChange, this.enableFeedback, this.checkboxSemanticLabel, });

final _i2.Key key;

final bool value;

final _i44.ValueChanged<bool> onChanged;

final _i32.MouseCursor mouseCursor;

final _i5.Color activeColor;

final _i169.WidgetStateProperty<_i5.Color> fillColor;

final _i5.Color checkColor;

final _i5.Color hoverColor;

final _i169.WidgetStateProperty<_i5.Color> overlayColor;

final double splashRadius;

final _i156.MaterialTapTargetSize materialTapTargetSize;

final _i156.VisualDensity visualDensity;

final _i43.FocusNode focusNode;

final bool autofocus;

final _i94.ShapeBorder shape;

final _i94.BorderSide side;

final bool isError;

final bool enabled;

final _i5.Color tileColor;

final _i3.Widget title;

final _i3.Widget subtitle;

final bool isThreeLine;

final bool dense;

final _i3.Widget secondary;

final bool selected;

final _i168.ListTileControlAffinity controlAffinity;

final _i14.EdgeInsetsGeometry contentPadding;

final bool tristate;

final _i94.OutlinedBorder checkboxShape;

final _i5.Color selectedTileColor;

final _i44.ValueChanged<bool> onFocusChange;

final bool enableFeedback;

final String checkboxSemanticLabel;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CheckboxListTile
(); } 
 }
class $ChoiceChip extends _i1.StatelessWidget {$ChoiceChip(this.label, this.selected, {this.key, this.avatar, this.labelStyle, this.labelPadding, this.onSelected, this.pressElevation, this.selectedColor, this.disabledColor, this.tooltip, this.side, this.shape, this.clipBehavior, this.focusNode, this.autofocus, this.color, this.backgroundColor, this.padding, this.visualDensity, this.materialTapTargetSize, this.elevation, this.shadowColor, this.surfaceTintColor, this.iconTheme, this.selectedShadowColor, this.showCheckmark, this.checkmarkColor, this.avatarBorder, this.avatarBoxConstraints, this.chipAnimationStyle, });

final _i2.Key key;

final _i3.Widget avatar;

final _i3.Widget label;

final _i38.TextStyle labelStyle;

final _i14.EdgeInsetsGeometry labelPadding;

final _i44.ValueChanged<bool> onSelected;

final double pressElevation;

final bool selected;

final _i5.Color selectedColor;

final _i5.Color disabledColor;

final String tooltip;

final _i94.BorderSide side;

final _i94.OutlinedBorder shape;

final _i5.Clip clipBehavior;

final _i43.FocusNode focusNode;

final bool autofocus;

final _i169.WidgetStateProperty<_i5.Color> color;

final _i5.Color backgroundColor;

final _i14.EdgeInsetsGeometry padding;

final _i156.VisualDensity visualDensity;

final _i156.MaterialTapTargetSize materialTapTargetSize;

final double elevation;

final _i5.Color shadowColor;

final _i5.Color surfaceTintColor;

final _i133.IconThemeData iconTheme;

final _i5.Color selectedShadowColor;

final bool showCheckmark;

final _i5.Color checkmarkColor;

final _i94.ShapeBorder avatarBorder;

final _i17.BoxConstraints avatarBoxConstraints;

final _i218.ChipAnimationStyle chipAnimationStyle;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ChoiceChip
(); } 
 }
class $CircleAvatar extends _i1.StatelessWidget {$CircleAvatar({this.key, this.child, this.backgroundColor, this.backgroundImage, this.foregroundImage, this.onBackgroundImageError, this.onForegroundImageError, this.foregroundColor, this.radius, this.minRadius, this.maxRadius, });

final _i2.Key key;

final _i3.Widget child;

final _i5.Color backgroundColor;

final _i50.ImageProvider<Object> backgroundImage;

final _i50.ImageProvider<Object> foregroundImage;

final _i226.ImageErrorListener onBackgroundImageError;

final _i226.ImageErrorListener onForegroundImageError;

final _i5.Color foregroundColor;

final double radius;

final double minRadius;

final double maxRadius;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CircleAvatar
(); } 
 }
class $DataTable extends _i1.StatelessWidget {$DataTable(this.columns, this.rows, {this.key, this.sortColumnIndex, this.sortAscending, this.onSelectAll, this.decoration, this.dataRowColor, this.dataRowHeight, this.dataRowMinHeight, this.dataRowMaxHeight, this.dataTextStyle, this.headingRowColor, this.headingRowHeight, this.headingTextStyle, this.horizontalMargin, this.columnSpacing, this.showCheckboxColumn, this.showBottomBorder, this.dividerThickness, this.checkboxHorizontalMargin, this.border, this.clipBehavior, });

final _i2.Key key;

final List<_i227.DataColumn> columns;

final int sortColumnIndex;

final bool sortAscending;

final _i44.ValueSetter<bool> onSelectAll;

final _i67.Decoration decoration;

final _i169.WidgetStateProperty<_i5.Color> dataRowColor;

final double dataRowHeight;

final double dataRowMinHeight;

final double dataRowMaxHeight;

final _i38.TextStyle dataTextStyle;

final _i169.WidgetStateProperty<_i5.Color> headingRowColor;

final double headingRowHeight;

final _i38.TextStyle headingTextStyle;

final double horizontalMargin;

final double columnSpacing;

final bool showCheckboxColumn;

final bool showBottomBorder;

final double dividerThickness;

final List<_i227.DataRow> rows;

final double checkboxHorizontalMargin;

final _i49.TableBorder border;

final _i5.Clip clipBehavior;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DataTable
(); } 
 }
class $TableRowInkWell extends _i1.StatelessWidget {$TableRowInkWell({this.key, this.child, this.onTap, this.onDoubleTap, this.onLongPress, this.onHighlightChanged, this.onSecondaryTap, this.onSecondaryTapDown, this.overlayColor, this.mouseCursor, });

final _i2.Key key;

final _i3.Widget child;

final _i58.GestureTapCallback onTap;

final _i58.GestureTapCallback onDoubleTap;

final _i59.GestureLongPressCallback onLongPress;

final _i44.ValueChanged<bool> onHighlightChanged;

final _i58.GestureTapCallback onSecondaryTap;

final _i58.GestureTapDownCallback onSecondaryTapDown;

final _i169.WidgetStateProperty<_i5.Color> overlayColor;

final _i32.MouseCursor mouseCursor;

_i1.Widget build(_i1.BuildContext context) { return
_i4.TableRowInkWell
(); } 
 }
class $DropdownMenuItem extends _i1.StatelessWidget {$DropdownMenuItem(this.child, {this.key, this.onTap, this.value, this.enabled, this.alignment, });

final _i2.Key key;

final _i5.VoidCallback onTap;

final T value;

final bool enabled;

final _i11.AlignmentGeometry alignment;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DropdownMenuItem
(); } 
 }
class $DropdownButtonHideUnderline extends _i1.StatelessWidget {$DropdownButtonHideUnderline(this.child, {this.key, });

final _i2.Key key;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DropdownButtonHideUnderline
(); } 
 }
class $DropdownButton extends _i1.StatelessWidget {$DropdownButton(this.items, this.onChanged, {this.key, this.selectedItemBuilder, this.value, this.hint, this.disabledHint, this.onTap, this.elevation, this.style, this.underline, this.icon, this.iconDisabledColor, this.iconEnabledColor, this.iconSize, this.isDense, this.isExpanded, this.itemHeight, this.menuWidth, this.focusColor, this.focusNode, this.autofocus, this.dropdownColor, this.menuMaxHeight, this.enableFeedback, this.alignment, this.borderRadius, this.padding, });

final _i2.Key key;

final List<_i228.DropdownMenuItem<T>> items;

final _i228.DropdownButtonBuilder selectedItemBuilder;

final T value;

final _i3.Widget hint;

final _i3.Widget disabledHint;

final _i44.ValueChanged<T> onChanged;

final _i5.VoidCallback onTap;

final int elevation;

final _i38.TextStyle style;

final _i3.Widget underline;

final _i3.Widget icon;

final _i5.Color iconDisabledColor;

final _i5.Color iconEnabledColor;

final double iconSize;

final bool isDense;

final bool isExpanded;

final double itemHeight;

final double menuWidth;

final _i5.Color focusColor;

final _i43.FocusNode focusNode;

final bool autofocus;

final _i5.Color dropdownColor;

final double menuMaxHeight;

final bool enableFeedback;

final _i11.AlignmentGeometry alignment;

final _i8.BorderRadius borderRadius;

final _i14.EdgeInsetsGeometry padding;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DropdownButton
(); } 
 }
class $DropdownButtonFormField extends _i1.StatelessWidget {$DropdownButtonFormField(this.items, this.onChanged, {this.key, this.selectedItemBuilder, this.value, this.hint, this.disabledHint, this.onTap, this.elevation, this.style, this.icon, this.iconDisabledColor, this.iconEnabledColor, this.iconSize, this.isDense, this.isExpanded, this.itemHeight, this.focusColor, this.focusNode, this.autofocus, this.dropdownColor, this.decoration, this.onSaved, this.validator, this.autovalidateMode, this.menuMaxHeight, this.enableFeedback, this.alignment, this.borderRadius, this.padding, });

final _i2.Key key;

final List<_i228.DropdownMenuItem<T>> items;

final _i228.DropdownButtonBuilder selectedItemBuilder;

final T value;

final _i3.Widget hint;

final _i3.Widget disabledHint;

final _i44.ValueChanged<T> onChanged;

final _i5.VoidCallback onTap;

final int elevation;

final _i38.TextStyle style;

final _i3.Widget icon;

final _i5.Color iconDisabledColor;

final _i5.Color iconEnabledColor;

final double iconSize;

final bool isDense;

final bool isExpanded;

final double itemHeight;

final _i5.Color focusColor;

final _i43.FocusNode focusNode;

final bool autofocus;

final _i5.Color dropdownColor;

final _i190.InputDecoration decoration;

final _i120.FormFieldSetter<T> onSaved;

final _i120.FormFieldValidator<T> validator;

final _i120.AutovalidateMode autovalidateMode;

final double menuMaxHeight;

final bool enableFeedback;

final _i11.AlignmentGeometry alignment;

final _i8.BorderRadius borderRadius;

final _i14.EdgeInsetsGeometry padding;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DropdownButtonFormField
(); } 
 }
class $DatePickerDialog extends _i1.StatelessWidget {$DatePickerDialog(this.firstDate, this.lastDate, {this.key, this.initialDate, this.currentDate, this.initialEntryMode, this.selectableDayPredicate, this.cancelText, this.confirmText, this.helpText, this.initialCalendarMode, this.errorFormatText, this.errorInvalidText, this.fieldHintText, this.fieldLabelText, this.keyboardType, this.restorationId, this.onDatePickerModeChange, this.switchToInputEntryModeIcon, this.switchToCalendarEntryModeIcon, });

final _i2.Key key;

final DateTime initialDate;

final DateTime firstDate;

final DateTime lastDate;

final DateTime currentDate;

final _i224.DatePickerEntryMode initialEntryMode;

final _i224.SelectableDayPredicate selectableDayPredicate;

final String cancelText;

final String confirmText;

final String helpText;

final _i224.DatePickerMode initialCalendarMode;

final String errorFormatText;

final String errorInvalidText;

final String fieldHintText;

final String fieldLabelText;

final _i81.TextInputType keyboardType;

final String restorationId;

final _i44.ValueChanged<_i224.DatePickerEntryMode> onDatePickerModeChange;

final _i115.Icon switchToInputEntryModeIcon;

final _i115.Icon switchToCalendarEntryModeIcon;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DatePickerDialog
(); } 
 }
class $DateRangePickerDialog extends _i1.StatelessWidget {$DateRangePickerDialog(this.firstDate, this.lastDate, {this.key, this.initialDateRange, this.currentDate, this.initialEntryMode, this.helpText, this.cancelText, this.confirmText, this.saveText, this.errorInvalidRangeText, this.errorFormatText, this.errorInvalidText, this.fieldStartHintText, this.fieldEndHintText, this.fieldStartLabelText, this.fieldEndLabelText, this.keyboardType, this.restorationId, this.switchToInputEntryModeIcon, this.switchToCalendarEntryModeIcon, });

final _i2.Key key;

final _i224.DateTimeRange initialDateRange;

final DateTime firstDate;

final DateTime lastDate;

final DateTime currentDate;

final _i224.DatePickerEntryMode initialEntryMode;

final String helpText;

final String cancelText;

final String confirmText;

final String saveText;

final String errorInvalidRangeText;

final String errorFormatText;

final String errorInvalidText;

final String fieldStartHintText;

final String fieldEndHintText;

final String fieldStartLabelText;

final String fieldEndLabelText;

final _i81.TextInputType keyboardType;

final String restorationId;

final _i115.Icon switchToInputEntryModeIcon;

final _i115.Icon switchToCalendarEntryModeIcon;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DateRangePickerDialog
(); } 
 }
class $InputDatePickerFormField extends _i1.StatelessWidget {$InputDatePickerFormField(this.firstDate, this.lastDate, {this.key, this.initialDate, this.onDateSubmitted, this.onDateSaved, this.selectableDayPredicate, this.errorFormatText, this.errorInvalidText, this.fieldHintText, this.fieldLabelText, this.keyboardType, this.autofocus, this.acceptEmptyDate, this.focusNode, });

final _i2.Key key;

final DateTime initialDate;

final DateTime firstDate;

final DateTime lastDate;

final _i44.ValueChanged<DateTime> onDateSubmitted;

final _i44.ValueChanged<DateTime> onDateSaved;

final _i224.SelectableDayPredicate selectableDayPredicate;

final String errorFormatText;

final String errorInvalidText;

final String fieldHintText;

final String fieldLabelText;

final _i81.TextInputType keyboardType;

final bool autofocus;

final bool acceptEmptyDate;

final _i43.FocusNode focusNode;

_i1.Widget build(_i1.BuildContext context) { return
_i4.InputDatePickerFormField
(); } 
 }
class $DrawerHeader extends _i1.StatelessWidget {$DrawerHeader(this.child, {this.key, this.decoration, this.margin, this.padding, this.duration, this.curve, });

final _i2.Key key;

final _i67.Decoration decoration;

final _i14.EdgeInsetsGeometry margin;

final _i14.EdgeInsetsGeometry padding;

final Duration duration;

final _i77.Curve curve;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DrawerHeader
(); } 
 }
class $DropdownMenu extends _i1.StatelessWidget {$DropdownMenu(this.dropdownMenuEntries, {this.key, this.enabled, this.width, this.menuHeight, this.leadingIcon, this.trailingIcon, this.label, this.hintText, this.helperText, this.errorText, this.selectedTrailingIcon, this.enableFilter, this.enableSearch, this.textStyle, this.textAlign, this.inputDecorationTheme, this.menuStyle, this.controller, this.initialSelection, this.onSelected, this.focusNode, this.requestFocusOnTap, this.expandedInsets, this.filterCallback, this.searchCallback, this.inputFormatters, });

final _i2.Key key;

final bool enabled;

final double width;

final double menuHeight;

final _i3.Widget leadingIcon;

final _i3.Widget trailingIcon;

final _i3.Widget label;

final String hintText;

final String helperText;

final String errorText;

final _i3.Widget selectedTrailingIcon;

final bool enableFilter;

final bool enableSearch;

final _i38.TextStyle textStyle;

final _i5.TextAlign textAlign;

final _i190.InputDecorationTheme inputDecorationTheme;

final _i193.MenuStyle menuStyle;

final _i80.TextEditingController controller;

final T initialSelection;

final _i44.ValueChanged<T> onSelected;

final _i43.FocusNode focusNode;

final bool requestFocusOnTap;

final _i14.EdgeInsets expandedInsets;

final _i229.FilterCallback<T> filterCallback;

final _i229.SearchCallback<T> searchCallback;

final List<_i229.DropdownMenuEntry<T>> dropdownMenuEntries;

final List<_i83.TextInputFormatter> inputFormatters;

_i1.Widget build(_i1.BuildContext context) { return
_i4.DropdownMenu
(); } 
 }
class $ExpandIcon extends _i1.StatelessWidget {$ExpandIcon(this.onPressed, {this.key, this.isExpanded, this.size, this.padding, this.color, this.disabledColor, this.expandedColor, this.splashColor, this.highlightColor, });

final _i2.Key key;

final bool isExpanded;

final double size;

final _i44.ValueChanged<bool> onPressed;

final _i14.EdgeInsetsGeometry padding;

final _i5.Color color;

final _i5.Color disabledColor;

final _i5.Color expandedColor;

final _i5.Color splashColor;

final _i5.Color highlightColor;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ExpandIcon
(); } 
 }
class $ExpansionPanelList extends _i1.StatelessWidget {$ExpansionPanelList({this.key, this.children, this.expansionCallback, this.animationDuration, this.expandedHeaderPadding, this.dividerColor, this.elevation, this.expandIconColor, this.materialGapSize, });

final _i2.Key key;

final List<_i230.ExpansionPanel> children;

final _i230.ExpansionPanelCallback expansionCallback;

final Duration animationDuration;

final _i14.EdgeInsets expandedHeaderPadding;

final _i5.Color dividerColor;

final double elevation;

final _i5.Color expandIconColor;

final double materialGapSize;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ExpansionPanelList
(); } 
 }
class $MergeableMaterial extends _i1.StatelessWidget {$MergeableMaterial({this.key, this.mainAxis, this.elevation, this.hasDividers, this.children, this.dividerColor, });

final _i2.Key key;

final _i18.Axis mainAxis;

final double elevation;

final bool hasDividers;

final List<_i231.MergeableMaterialItem> children;

final _i5.Color dividerColor;

_i1.Widget build(_i1.BuildContext context) { return
_i4.MergeableMaterial
(); } 
 }
class $ExpansionTile extends _i1.StatelessWidget {$ExpansionTile(this.title, {this.key, this.leading, this.subtitle, this.onExpansionChanged, this.children, this.trailing, this.showTrailingIcon, this.initiallyExpanded, this.maintainState, this.tilePadding, this.expandedCrossAxisAlignment, this.expandedAlignment, this.childrenPadding, this.backgroundColor, this.collapsedBackgroundColor, this.textColor, this.collapsedTextColor, this.iconColor, this.collapsedIconColor, this.shape, this.collapsedShape, this.clipBehavior, this.controlAffinity, this.controller, this.dense, this.visualDensity, this.minTileHeight, this.enableFeedback, this.enabled, this.expansionAnimationStyle, });

final _i2.Key key;

final _i3.Widget leading;

final _i3.Widget title;

final _i3.Widget subtitle;

final _i44.ValueChanged<bool> onExpansionChanged;

final List<_i3.Widget> children;

final _i3.Widget trailing;

final bool showTrailingIcon;

final bool initiallyExpanded;

final bool maintainState;

final _i14.EdgeInsetsGeometry tilePadding;

final _i20.CrossAxisAlignment expandedCrossAxisAlignment;

final _i11.Alignment expandedAlignment;

final _i14.EdgeInsetsGeometry childrenPadding;

final _i5.Color backgroundColor;

final _i5.Color collapsedBackgroundColor;

final _i5.Color textColor;

final _i5.Color collapsedTextColor;

final _i5.Color iconColor;

final _i5.Color collapsedIconColor;

final _i94.ShapeBorder shape;

final _i94.ShapeBorder collapsedShape;

final _i5.Clip clipBehavior;

final _i168.ListTileControlAffinity controlAffinity;

final _i232.ExpansionTileController controller;

final bool dense;

final _i156.VisualDensity visualDensity;

final double minTileHeight;

final bool enableFeedback;

final bool enabled;

final _i148.AnimationStyle expansionAnimationStyle;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ExpansionTile
(); } 
 }
class $FilterChip extends _i1.StatelessWidget {$FilterChip(this.label, this.onSelected, {this.key, this.avatar, this.labelStyle, this.labelPadding, this.selected, this.deleteIcon, this.onDeleted, this.deleteIconColor, this.deleteButtonTooltipMessage, this.pressElevation, this.disabledColor, this.selectedColor, this.tooltip, this.side, this.shape, this.clipBehavior, this.focusNode, this.autofocus, this.color, this.backgroundColor, this.padding, this.visualDensity, this.materialTapTargetSize, this.elevation, this.shadowColor, this.surfaceTintColor, this.iconTheme, this.selectedShadowColor, this.showCheckmark, this.checkmarkColor, this.avatarBorder, this.avatarBoxConstraints, this.deleteIconBoxConstraints, this.chipAnimationStyle, });

final _i2.Key key;

final _i3.Widget avatar;

final _i3.Widget label;

final _i38.TextStyle labelStyle;

final _i14.EdgeInsetsGeometry labelPadding;

final bool selected;

final _i44.ValueChanged<bool> onSelected;

final _i3.Widget deleteIcon;

final _i5.VoidCallback onDeleted;

final _i5.Color deleteIconColor;

final String deleteButtonTooltipMessage;

final double pressElevation;

final _i5.Color disabledColor;

final _i5.Color selectedColor;

final String tooltip;

final _i94.BorderSide side;

final _i94.OutlinedBorder shape;

final _i5.Clip clipBehavior;

final _i43.FocusNode focusNode;

final bool autofocus;

final _i169.WidgetStateProperty<_i5.Color> color;

final _i5.Color backgroundColor;

final _i14.EdgeInsetsGeometry padding;

final _i156.VisualDensity visualDensity;

final _i156.MaterialTapTargetSize materialTapTargetSize;

final double elevation;

final _i5.Color shadowColor;

final _i5.Color surfaceTintColor;

final _i133.IconThemeData iconTheme;

final _i5.Color selectedShadowColor;

final bool showCheckmark;

final _i5.Color checkmarkColor;

final _i94.ShapeBorder avatarBorder;

final _i17.BoxConstraints avatarBoxConstraints;

final _i17.BoxConstraints deleteIconBoxConstraints;

final _i218.ChipAnimationStyle chipAnimationStyle;

_i1.Widget build(_i1.BuildContext context) { return
_i4.FilterChip
(); } 
 }
class $FlutterLogo extends _i1.StatelessWidget {$FlutterLogo({this.key, this.size, this.textColor, this.style, this.duration, this.curve, });

final _i2.Key key;

final double size;

final _i5.Color textColor;

final _i233.FlutterLogoStyle style;

final Duration duration;

final _i77.Curve curve;

_i1.Widget build(_i1.BuildContext context) { return
_i4.FlutterLogo
(); } 
 }
class $GridTile extends _i1.StatelessWidget {$GridTile(this.child, {this.key, this.header, this.footer, });

final _i2.Key key;

final _i3.Widget header;

final _i3.Widget footer;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.GridTile
(); } 
 }
class $GridTileBar extends _i1.StatelessWidget {$GridTileBar({this.key, this.backgroundColor, this.leading, this.title, this.subtitle, this.trailing, });

final _i2.Key key;

final _i5.Color backgroundColor;

final _i3.Widget leading;

final _i3.Widget title;

final _i3.Widget subtitle;

final _i3.Widget trailing;

_i1.Widget build(_i1.BuildContext context) { return
_i4.GridTileBar
(); } 
 }
class $InputChip extends _i1.StatelessWidget {$InputChip(this.label, {this.key, this.avatar, this.labelStyle, this.labelPadding, this.selected, this.isEnabled, this.onSelected, this.deleteIcon, this.onDeleted, this.deleteIconColor, this.deleteButtonTooltipMessage, this.onPressed, this.pressElevation, this.disabledColor, this.selectedColor, this.tooltip, this.side, this.shape, this.clipBehavior, this.focusNode, this.autofocus, this.color, this.backgroundColor, this.padding, this.visualDensity, this.materialTapTargetSize, this.elevation, this.shadowColor, this.surfaceTintColor, this.iconTheme, this.selectedShadowColor, this.showCheckmark, this.checkmarkColor, this.avatarBorder, this.avatarBoxConstraints, this.deleteIconBoxConstraints, this.chipAnimationStyle, });

final _i2.Key key;

final _i3.Widget avatar;

final _i3.Widget label;

final _i38.TextStyle labelStyle;

final _i14.EdgeInsetsGeometry labelPadding;

final bool selected;

final bool isEnabled;

final _i44.ValueChanged<bool> onSelected;

final _i3.Widget deleteIcon;

final _i5.VoidCallback onDeleted;

final _i5.Color deleteIconColor;

final String deleteButtonTooltipMessage;

final _i5.VoidCallback onPressed;

final double pressElevation;

final _i5.Color disabledColor;

final _i5.Color selectedColor;

final String tooltip;

final _i94.BorderSide side;

final _i94.OutlinedBorder shape;

final _i5.Clip clipBehavior;

final _i43.FocusNode focusNode;

final bool autofocus;

final _i169.WidgetStateProperty<_i5.Color> color;

final _i5.Color backgroundColor;

final _i14.EdgeInsetsGeometry padding;

final _i156.VisualDensity visualDensity;

final _i156.MaterialTapTargetSize materialTapTargetSize;

final double elevation;

final _i5.Color shadowColor;

final _i5.Color surfaceTintColor;

final _i133.IconThemeData iconTheme;

final _i5.Color selectedShadowColor;

final bool showCheckmark;

final _i5.Color checkmarkColor;

final _i94.ShapeBorder avatarBorder;

final _i17.BoxConstraints avatarBoxConstraints;

final _i17.BoxConstraints deleteIconBoxConstraints;

final _i218.ChipAnimationStyle chipAnimationStyle;

_i1.Widget build(_i1.BuildContext context) { return
_i4.InputChip
(); } 
 }
class $PaginatedDataTable extends _i1.StatelessWidget {$PaginatedDataTable(this.columns, this.source, {this.key, this.header, this.actions, this.sortColumnIndex, this.sortAscending, this.onSelectAll, this.dataRowHeight, this.dataRowMinHeight, this.dataRowMaxHeight, this.headingRowHeight, this.horizontalMargin, this.columnSpacing, this.showCheckboxColumn, this.showFirstLastButtons, this.initialFirstRowIndex, this.onPageChanged, this.rowsPerPage, this.availableRowsPerPage, this.onRowsPerPageChanged, this.dragStartBehavior, this.arrowHeadColor, this.checkboxHorizontalMargin, this.controller, this.primary, this.headingRowColor, this.showEmptyRows, });

final _i2.Key key;

final _i3.Widget header;

final List<_i3.Widget> actions;

final List<_i227.DataColumn> columns;

final int sortColumnIndex;

final bool sortAscending;

final _i44.ValueSetter<bool> onSelectAll;

final double dataRowHeight;

final double dataRowMinHeight;

final double dataRowMaxHeight;

final double headingRowHeight;

final double horizontalMargin;

final double columnSpacing;

final bool showCheckboxColumn;

final bool showFirstLastButtons;

final int initialFirstRowIndex;

final _i44.ValueChanged<int> onPageChanged;

final int rowsPerPage;

final List<int> availableRowsPerPage;

final _i44.ValueChanged<int> onRowsPerPageChanged;

final _i56.DragStartBehavior dragStartBehavior;

final _i5.Color arrowHeadColor;

final _i234.DataTableSource source;

final double checkboxHorizontalMargin;

final _i52.ScrollController controller;

final bool primary;

final _i169.WidgetStateProperty<_i5.Color> headingRowColor;

final bool showEmptyRows;

_i1.Widget build(_i1.BuildContext context) { return
_i4.PaginatedDataTable
(); } 
 }
class $PopupMenuDivider extends _i1.StatelessWidget {$PopupMenuDivider({this.key, this.height, });

final _i2.Key key;

final double height;

_i1.Widget build(_i1.BuildContext context) { return
_i4.PopupMenuDivider
(); } 
 }
class $PopupMenuItem extends _i1.StatelessWidget {$PopupMenuItem(this.child, {this.key, this.value, this.onTap, this.enabled, this.height, this.padding, this.textStyle, this.labelTextStyle, this.mouseCursor, });

final _i2.Key key;

final T value;

final _i5.VoidCallback onTap;

final bool enabled;

final double height;

final _i14.EdgeInsets padding;

final _i38.TextStyle textStyle;

final _i169.WidgetStateProperty<_i38.TextStyle> labelTextStyle;

final _i32.MouseCursor mouseCursor;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.PopupMenuItem
(); } 
 }
class $CheckedPopupMenuItem extends _i1.StatelessWidget {$CheckedPopupMenuItem({this.key, this.value, this.checked, this.enabled, this.padding, this.height, this.labelTextStyle, this.mouseCursor, this.child, this.onTap, });

final _i2.Key key;

final T value;

final bool checked;

final bool enabled;

final _i14.EdgeInsets padding;

final double height;

final _i169.WidgetStateProperty<_i38.TextStyle> labelTextStyle;

final _i32.MouseCursor mouseCursor;

final _i3.Widget child;

final _i5.VoidCallback onTap;

_i1.Widget build(_i1.BuildContext context) { return
_i4.CheckedPopupMenuItem
(); } 
 }
class $PopupMenuButton extends _i1.StatelessWidget {$PopupMenuButton(this.itemBuilder, {this.key, this.initialValue, this.onOpened, this.onSelected, this.onCanceled, this.tooltip, this.elevation, this.shadowColor, this.surfaceTintColor, this.padding, this.menuPadding, this.child, this.splashRadius, this.icon, this.iconSize, this.offset, this.enabled, this.shape, this.color, this.iconColor, this.enableFeedback, this.constraints, this.position, this.clipBehavior, this.useRootNavigator, this.popUpAnimationStyle, this.routeSettings, this.style, });

final _i2.Key key;

final _i235.PopupMenuItemBuilder<T> itemBuilder;

final T initialValue;

final _i5.VoidCallback onOpened;

final _i235.PopupMenuItemSelected<T> onSelected;

final _i235.PopupMenuCanceled onCanceled;

final String tooltip;

final double elevation;

final _i5.Color shadowColor;

final _i5.Color surfaceTintColor;

final _i14.EdgeInsetsGeometry padding;

final _i14.EdgeInsetsGeometry menuPadding;

final _i3.Widget child;

final double splashRadius;

final _i3.Widget icon;

final double iconSize;

final _i5.Offset offset;

final bool enabled;

final _i94.ShapeBorder shape;

final _i5.Color color;

final _i5.Color iconColor;

final bool enableFeedback;

final _i17.BoxConstraints constraints;

final _i205.PopupMenuPosition position;

final _i5.Clip clipBehavior;

final bool useRootNavigator;

final _i148.AnimationStyle popUpAnimationStyle;

final _i35.RouteSettings routeSettings;

final _i154.ButtonStyle style;

_i1.Widget build(_i1.BuildContext context) { return
_i4.PopupMenuButton
(); } 
 }
class $RadioListTile extends _i1.StatelessWidget {$RadioListTile(this.value, this.groupValue, this.onChanged, {this.key, this.mouseCursor, this.toggleable, this.activeColor, this.fillColor, this.hoverColor, this.overlayColor, this.splashRadius, this.materialTapTargetSize, this.title, this.subtitle, this.isThreeLine, this.dense, this.secondary, this.selected, this.controlAffinity, this.autofocus, this.contentPadding, this.shape, this.tileColor, this.selectedTileColor, this.visualDensity, this.focusNode, this.onFocusChange, this.enableFeedback, });

final _i2.Key key;

final T value;

final T groupValue;

final _i44.ValueChanged<T> onChanged;

final _i32.MouseCursor mouseCursor;

final bool toggleable;

final _i5.Color activeColor;

final _i169.WidgetStateProperty<_i5.Color> fillColor;

final _i5.Color hoverColor;

final _i169.WidgetStateProperty<_i5.Color> overlayColor;

final double splashRadius;

final _i156.MaterialTapTargetSize materialTapTargetSize;

final _i3.Widget title;

final _i3.Widget subtitle;

final bool isThreeLine;

final bool dense;

final _i3.Widget secondary;

final bool selected;

final _i168.ListTileControlAffinity controlAffinity;

final bool autofocus;

final _i14.EdgeInsetsGeometry contentPadding;

final _i94.ShapeBorder shape;

final _i5.Color tileColor;

final _i5.Color selectedTileColor;

final _i156.VisualDensity visualDensity;

final _i43.FocusNode focusNode;

final _i44.ValueChanged<bool> onFocusChange;

final bool enableFeedback;

_i1.Widget build(_i1.BuildContext context) { return
_i4.RadioListTile
(); } 
 }
class $RangeSlider extends _i1.StatelessWidget {$RangeSlider(this.values, this.onChanged, {this.key, this.onChangeStart, this.onChangeEnd, this.min, this.max, this.divisions, this.labels, this.activeColor, this.inactiveColor, this.overlayColor, this.mouseCursor, this.semanticFormatterCallback, });

final _i2.Key key;

final _i210.RangeValues values;

final _i44.ValueChanged<_i210.RangeValues> onChanged;

final _i44.ValueChanged<_i210.RangeValues> onChangeStart;

final _i44.ValueChanged<_i210.RangeValues> onChangeEnd;

final double min;

final double max;

final int divisions;

final _i210.RangeLabels labels;

final _i5.Color activeColor;

final _i5.Color inactiveColor;

final _i169.WidgetStateProperty<_i5.Color> overlayColor;

final _i169.WidgetStateProperty<_i32.MouseCursor> mouseCursor;

final _i210.SemanticFormatterCallback semanticFormatterCallback;

_i1.Widget build(_i1.BuildContext context) { return
_i4.RangeSlider
(); } 
 }
class $RefreshIndicator extends _i1.StatelessWidget {$RefreshIndicator(this.child, this.onRefresh, {this.key, this.displacement, this.edgeOffset, this.color, this.backgroundColor, this.notificationPredicate, this.semanticsLabel, this.semanticsValue, this.strokeWidth, this.triggerMode, });

final _i2.Key key;

final _i3.Widget child;

final double displacement;

final double edgeOffset;

final _i236.RefreshCallback onRefresh;

final _i5.Color color;

final _i5.Color backgroundColor;

final _i65.ScrollNotificationPredicate notificationPredicate;

final String semanticsLabel;

final String semanticsValue;

final double strokeWidth;

final _i236.RefreshIndicatorTriggerMode triggerMode;

_i1.Widget build(_i1.BuildContext context) { return
_i4.RefreshIndicator
(); } 
 }
class $ReorderableListView extends _i1.StatelessWidget {$ReorderableListView(this.children, this.onReorder, {this.key, this.onReorderStart, this.onReorderEnd, this.itemExtent, this.itemExtentBuilder, this.prototypeItem, this.proxyDecorator, this.buildDefaultDragHandles, this.padding, this.header, this.footer, this.scrollDirection, this.reverse, this.scrollController, this.primary, this.physics, this.shrinkWrap, this.anchor, this.cacheExtent, this.dragStartBehavior, this.keyboardDismissBehavior, this.restorationId, this.clipBehavior, this.autoScrollerVelocityScalar, });

final _i2.Key key;

final List<_i3.Widget> children;

final _i145.ReorderCallback onReorder;

final void Function(int) onReorderStart;

final void Function(int) onReorderEnd;

final double itemExtent;

final _i89.ItemExtentBuilder itemExtentBuilder;

final _i3.Widget prototypeItem;

final _i145.ReorderItemProxyDecorator proxyDecorator;

final bool buildDefaultDragHandles;

final _i14.EdgeInsets padding;

final _i3.Widget header;

final _i3.Widget footer;

final _i18.Axis scrollDirection;

final bool reverse;

final _i52.ScrollController scrollController;

final bool primary;

final _i53.ScrollPhysics physics;

final bool shrinkWrap;

final double anchor;

final double cacheExtent;

final _i56.DragStartBehavior dragStartBehavior;

final _i123.ScrollViewKeyboardDismissBehavior keyboardDismissBehavior;

final String restorationId;

final _i5.Clip clipBehavior;

final double autoScrollerVelocityScalar;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ReorderableListView
(); } 
 }
class $SearchAnchor extends _i1.StatelessWidget {$SearchAnchor(this.builder, this.suggestionsBuilder, {this.key, this.isFullScreen, this.searchController, this.viewBuilder, this.viewLeading, this.viewTrailing, this.viewHintText, this.viewBackgroundColor, this.viewElevation, this.viewSurfaceTintColor, this.viewSide, this.viewShape, this.headerHeight, this.headerTextStyle, this.headerHintStyle, this.dividerColor, this.viewConstraints, this.textCapitalization, this.viewOnChanged, this.viewOnSubmitted, this.textInputAction, this.keyboardType, });

final _i2.Key key;

final bool isFullScreen;

final _i237.SearchController searchController;

final _i237.ViewBuilder viewBuilder;

final _i3.Widget viewLeading;

final Iterable<_i3.Widget> viewTrailing;

final String viewHintText;

final _i5.Color viewBackgroundColor;

final double viewElevation;

final _i5.Color viewSurfaceTintColor;

final _i94.BorderSide viewSide;

final _i94.OutlinedBorder viewShape;

final double headerHeight;

final _i38.TextStyle headerTextStyle;

final _i38.TextStyle headerHintStyle;

final _i5.Color dividerColor;

final _i17.BoxConstraints viewConstraints;

final _i81.TextCapitalization textCapitalization;

final _i44.ValueChanged<String> viewOnChanged;

final _i44.ValueChanged<String> viewOnSubmitted;

final _i237.SearchAnchorChildBuilder builder;

final _i237.SuggestionsBuilder suggestionsBuilder;

final _i81.TextInputAction textInputAction;

final _i81.TextInputType keyboardType;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SearchAnchor
(); } 
 }
class $SearchBar extends _i1.StatelessWidget {$SearchBar({this.key, this.controller, this.focusNode, this.hintText, this.leading, this.trailing, this.onTap, this.onTapOutside, this.onChanged, this.onSubmitted, this.constraints, this.elevation, this.backgroundColor, this.shadowColor, this.surfaceTintColor, this.overlayColor, this.side, this.shape, this.padding, this.textStyle, this.hintStyle, this.textCapitalization, this.enabled, this.autoFocus, this.textInputAction, this.keyboardType, });

final _i2.Key key;

final _i80.TextEditingController controller;

final _i43.FocusNode focusNode;

final String hintText;

final _i3.Widget leading;

final Iterable<_i3.Widget> trailing;

final _i58.GestureTapCallback onTap;

final _i82.TapRegionCallback onTapOutside;

final _i44.ValueChanged<String> onChanged;

final _i44.ValueChanged<String> onSubmitted;

final _i17.BoxConstraints constraints;

final _i169.WidgetStateProperty<double> elevation;

final _i169.WidgetStateProperty<_i5.Color> backgroundColor;

final _i169.WidgetStateProperty<_i5.Color> shadowColor;

final _i169.WidgetStateProperty<_i5.Color> surfaceTintColor;

final _i169.WidgetStateProperty<_i5.Color> overlayColor;

final _i169.WidgetStateProperty<_i94.BorderSide> side;

final _i169.WidgetStateProperty<_i94.OutlinedBorder> shape;

final _i169.WidgetStateProperty<_i14.EdgeInsetsGeometry> padding;

final _i169.WidgetStateProperty<_i38.TextStyle> textStyle;

final _i169.WidgetStateProperty<_i38.TextStyle> hintStyle;

final _i81.TextCapitalization textCapitalization;

final bool enabled;

final bool autoFocus;

final _i81.TextInputAction textInputAction;

final _i81.TextInputType keyboardType;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SearchBar
(); } 
 }
class $SegmentedButton extends _i1.StatelessWidget {$SegmentedButton(this.segments, this.selected, {this.key, this.onSelectionChanged, this.multiSelectionEnabled, this.emptySelectionAllowed, this.expandedInsets, this.style, this.showSelectedIcon, this.selectedIcon, });

final _i2.Key key;

final List<_i238.ButtonSegment<T>> segments;

final Set<T> selected;

final void Function(Set<T>) onSelectionChanged;

final bool multiSelectionEnabled;

final bool emptySelectionAllowed;

final _i14.EdgeInsets expandedInsets;

final _i154.ButtonStyle style;

final bool showSelectedIcon;

final _i3.Widget selectedIcon;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SegmentedButton
(); } 
 }
class $SelectionArea extends _i1.StatelessWidget {$SelectionArea(this.child, {this.key, this.focusNode, this.selectionControls, this.contextMenuBuilder, this.magnifierConfiguration, this.onSelectionChanged, });

final _i2.Key key;

final _i43.FocusNode focusNode;

final _i70.TextSelectionControls selectionControls;

final _i69.SelectableRegionContextMenuBuilder contextMenuBuilder;

final _i71.TextMagnifierConfiguration magnifierConfiguration;

final _i44.ValueChanged<_i27.SelectedContent> onSelectionChanged;

final _i3.Widget child;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SelectionArea
(); } 
 }
class $Stepper extends _i1.StatelessWidget {$Stepper(this.steps, {this.key, this.controller, this.physics, this.type, this.currentStep, this.onStepTapped, this.onStepContinue, this.onStepCancel, this.controlsBuilder, this.elevation, this.margin, this.connectorColor, this.connectorThickness, this.stepIconBuilder, this.stepIconHeight, this.stepIconWidth, this.stepIconMargin, });

final _i2.Key key;

final List<_i239.Step> steps;

final _i52.ScrollController controller;

final _i53.ScrollPhysics physics;

final _i239.StepperType type;

final int currentStep;

final _i44.ValueChanged<int> onStepTapped;

final _i5.VoidCallback onStepContinue;

final _i5.VoidCallback onStepCancel;

final _i239.ControlsWidgetBuilder controlsBuilder;

final double elevation;

final _i14.EdgeInsetsGeometry margin;

final _i169.WidgetStateProperty<_i5.Color> connectorColor;

final double connectorThickness;

final _i239.StepIconBuilder stepIconBuilder;

final double stepIconHeight;

final double stepIconWidth;

final _i14.EdgeInsets stepIconMargin;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Stepper
(); } 
 }
class $Switch extends _i1.StatelessWidget {$Switch(this.value, this.onChanged, {this.key, this.activeColor, this.activeTrackColor, this.inactiveThumbColor, this.inactiveTrackColor, this.activeThumbImage, this.onActiveThumbImageError, this.inactiveThumbImage, this.onInactiveThumbImageError, this.thumbColor, this.trackColor, this.trackOutlineColor, this.trackOutlineWidth, this.thumbIcon, this.materialTapTargetSize, this.dragStartBehavior, this.mouseCursor, this.focusColor, this.hoverColor, this.overlayColor, this.splashRadius, this.focusNode, this.onFocusChange, this.autofocus, });

final _i2.Key key;

final bool value;

final _i44.ValueChanged<bool> onChanged;

final _i5.Color activeColor;

final _i5.Color activeTrackColor;

final _i5.Color inactiveThumbColor;

final _i5.Color inactiveTrackColor;

final _i50.ImageProvider<Object> activeThumbImage;

final _i226.ImageErrorListener onActiveThumbImageError;

final _i50.ImageProvider<Object> inactiveThumbImage;

final _i226.ImageErrorListener onInactiveThumbImageError;

final _i169.WidgetStateProperty<_i5.Color> thumbColor;

final _i169.WidgetStateProperty<_i5.Color> trackColor;

final _i169.WidgetStateProperty<_i5.Color> trackOutlineColor;

final _i169.WidgetStateProperty<double> trackOutlineWidth;

final _i169.WidgetStateProperty<_i115.Icon> thumbIcon;

final _i156.MaterialTapTargetSize materialTapTargetSize;

final _i56.DragStartBehavior dragStartBehavior;

final _i32.MouseCursor mouseCursor;

final _i5.Color focusColor;

final _i5.Color hoverColor;

final _i169.WidgetStateProperty<_i5.Color> overlayColor;

final double splashRadius;

final _i43.FocusNode focusNode;

final _i44.ValueChanged<bool> onFocusChange;

final bool autofocus;

_i1.Widget build(_i1.BuildContext context) { return
_i4.Switch
(); } 
 }
class $SwitchListTile extends _i1.StatelessWidget {$SwitchListTile(this.value, this.onChanged, {this.key, this.activeColor, this.activeTrackColor, this.inactiveThumbColor, this.inactiveTrackColor, this.activeThumbImage, this.onActiveThumbImageError, this.inactiveThumbImage, this.onInactiveThumbImageError, this.thumbColor, this.trackColor, this.trackOutlineColor, this.thumbIcon, this.materialTapTargetSize, this.dragStartBehavior, this.mouseCursor, this.overlayColor, this.splashRadius, this.focusNode, this.onFocusChange, this.autofocus, this.tileColor, this.title, this.subtitle, this.isThreeLine, this.dense, this.contentPadding, this.secondary, this.selected, this.controlAffinity, this.shape, this.selectedTileColor, this.visualDensity, this.enableFeedback, this.hoverColor, });

final _i2.Key key;

final bool value;

final _i44.ValueChanged<bool> onChanged;

final _i5.Color activeColor;

final _i5.Color activeTrackColor;

final _i5.Color inactiveThumbColor;

final _i5.Color inactiveTrackColor;

final _i50.ImageProvider<Object> activeThumbImage;

final _i226.ImageErrorListener onActiveThumbImageError;

final _i50.ImageProvider<Object> inactiveThumbImage;

final _i226.ImageErrorListener onInactiveThumbImageError;

final _i169.WidgetStateProperty<_i5.Color> thumbColor;

final _i169.WidgetStateProperty<_i5.Color> trackColor;

final _i169.WidgetStateProperty<_i5.Color> trackOutlineColor;

final _i169.WidgetStateProperty<_i115.Icon> thumbIcon;

final _i156.MaterialTapTargetSize materialTapTargetSize;

final _i56.DragStartBehavior dragStartBehavior;

final _i32.MouseCursor mouseCursor;

final _i169.WidgetStateProperty<_i5.Color> overlayColor;

final double splashRadius;

final _i43.FocusNode focusNode;

final _i44.ValueChanged<bool> onFocusChange;

final bool autofocus;

final _i5.Color tileColor;

final _i3.Widget title;

final _i3.Widget subtitle;

final bool isThreeLine;

final bool dense;

final _i14.EdgeInsetsGeometry contentPadding;

final _i3.Widget secondary;

final bool selected;

final _i168.ListTileControlAffinity controlAffinity;

final _i94.ShapeBorder shape;

final _i5.Color selectedTileColor;

final _i156.VisualDensity visualDensity;

final bool enableFeedback;

final _i5.Color hoverColor;

_i1.Widget build(_i1.BuildContext context) { return
_i4.SwitchListTile
(); } 
 }
class $TimePickerDialog extends _i1.StatelessWidget {$TimePickerDialog(this.initialTime, {this.key, this.cancelText, this.confirmText, this.helpText, this.errorInvalidText, this.hourLabelText, this.minuteLabelText, this.restorationId, this.initialEntryMode, this.orientation, this.onEntryModeChanged, });

final _i2.Key key;

final _i240.TimeOfDay initialTime;

final String cancelText;

final String confirmText;

final String helpText;

final String errorInvalidText;

final String hourLabelText;

final String minuteLabelText;

final String restorationId;

final _i241.TimePickerEntryMode initialEntryMode;

final _i45.Orientation orientation;

final _i241.EntryModeChangeCallback onEntryModeChanged;

_i1.Widget build(_i1.BuildContext context) { return
_i4.TimePickerDialog
(); } 
 }
class $ToggleButtons extends _i1.StatelessWidget {$ToggleButtons(this.children, this.isSelected, {this.key, this.onPressed, this.mouseCursor, this.tapTargetSize, this.textStyle, this.constraints, this.color, this.selectedColor, this.disabledColor, this.fillColor, this.focusColor, this.highlightColor, this.hoverColor, this.splashColor, this.focusNodes, this.renderBorder, this.borderColor, this.selectedBorderColor, this.disabledBorderColor, this.borderRadius, this.borderWidth, this.direction, this.verticalDirection, });

final _i2.Key key;

final List<_i3.Widget> children;

final List<bool> isSelected;

final void Function(int) onPressed;

final _i32.MouseCursor mouseCursor;

final _i156.MaterialTapTargetSize tapTargetSize;

final _i38.TextStyle textStyle;

final _i17.BoxConstraints constraints;

final _i5.Color color;

final _i5.Color selectedColor;

final _i5.Color disabledColor;

final _i5.Color fillColor;

final _i5.Color focusColor;

final _i5.Color highlightColor;

final _i5.Color hoverColor;

final _i5.Color splashColor;

final List<_i43.FocusNode> focusNodes;

final bool renderBorder;

final _i5.Color borderColor;

final _i5.Color selectedBorderColor;

final _i5.Color disabledBorderColor;

final _i8.BorderRadius borderRadius;

final double borderWidth;

final _i18.Axis direction;

final _i18.VerticalDirection verticalDirection;

_i1.Widget build(_i1.BuildContext context) { return
_i4.ToggleButtons
(); } 
 }
class $UserAccountsDrawerHeader extends _i1.StatelessWidget {$UserAccountsDrawerHeader(this.accountName, this.accountEmail, {this.key, this.decoration, this.margin, this.currentAccountPicture, this.otherAccountsPictures, this.currentAccountPictureSize, this.otherAccountsPicturesSize, this.onDetailsPressed, this.arrowColor, });

final _i2.Key key;

final _i67.Decoration decoration;

final _i14.EdgeInsetsGeometry margin;

final _i3.Widget currentAccountPicture;

final List<_i3.Widget> otherAccountsPictures;

final _i5.Size currentAccountPictureSize;

final _i5.Size otherAccountsPicturesSize;

final _i3.Widget accountName;

final _i3.Widget accountEmail;

final _i5.VoidCallback onDetailsPressed;

final _i5.Color arrowColor;

_i1.Widget build(_i1.BuildContext context) { return
_i4.UserAccountsDrawerHeader
(); } 
 }
