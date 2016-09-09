.class Lcom/android/calendar/AllInOneCalendarActivity$9;
.super Landroid/support/v4/app/ActionBarDrawerToggle;
.source "AllInOneCalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AllInOneCalendarActivity;->configureDrawerLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AllInOneCalendarActivity;

.field final synthetic val$drawerClosedAnnouncement:Ljava/lang/String;

.field final synthetic val$drawerOpenedAnnouncement:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/calendar/AllInOneCalendarActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;ZIIILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 828
    iput-object p1, p0, Lcom/android/calendar/AllInOneCalendarActivity$9;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$9;->val$drawerClosedAnnouncement:Ljava/lang/String;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$9;->val$drawerOpenedAnnouncement:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v1 .. v7}, Landroid/support/v4/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;ZIII)V

    return-void
.end method

.method private handlePendingDrawerAction()V
    .locals 4

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$9;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mPendingDrawerActionId:I
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$1800(Lcom/android/calendar/AllInOneCalendarActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 877
    :goto_0
    return-void

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$9;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    .line 852
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$9;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mPendingDrawerActionId:I
    invoke-static {v1}, Lcom/android/calendar/AllInOneCalendarActivity;->access$1800(Lcom/android/calendar/AllInOneCalendarActivity;)I

    move-result v1

    .line 853
    sget v2, Lcom/android/calendar/R$id;->agenda_view:I

    if-eq v1, v2, :cond_1

    sget v2, Lcom/android/calendar/R$id;->hourly_view:I

    if-eq v1, v2, :cond_1

    sget v2, Lcom/android/calendar/R$id;->list_week_view_3days:I

    if-eq v1, v2, :cond_1

    sget v2, Lcom/android/calendar/R$id;->week_view:I

    if-eq v1, v2, :cond_1

    sget v2, Lcom/android/calendar/R$id;->month_view:I

    if-ne v1, v2, :cond_2

    .line 856
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$9;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # invokes: Lcom/android/calendar/AllInOneCalendarActivity;->logMenuItemSelected(I)V
    invoke-static {v0, v1}, Lcom/android/calendar/AllInOneCalendarActivity;->access$1900(Lcom/android/calendar/AllInOneCalendarActivity;I)V

    .line 857
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$9;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/AllInOneCalendarActivity;->switchView(IZ)V

    .line 871
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$9;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$1700(Lcom/android/calendar/AllInOneCalendarActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/AllInOneCalendarActivity$9$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/AllInOneCalendarActivity$9$2;-><init>(Lcom/android/calendar/AllInOneCalendarActivity$9;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 858
    :cond_2
    sget v2, Lcom/android/calendar/R$id;->search:I

    if-ne v1, v2, :cond_3

    .line 859
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$9;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # invokes: Lcom/android/calendar/AllInOneCalendarActivity;->logMenuItemSelected(I)V
    invoke-static {v0, v1}, Lcom/android/calendar/AllInOneCalendarActivity;->access$1900(Lcom/android/calendar/AllInOneCalendarActivity;I)V

    .line 860
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$9;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-virtual {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->onSearchRequested()Z

    goto :goto_1

    .line 861
    :cond_3
    sget v2, Lcom/android/calendar/R$id;->settings:I

    if-eq v1, v2, :cond_4

    sget v2, Lcom/android/calendar/R$id;->google_logo:I

    if-ne v1, v2, :cond_5

    .line 862
    :cond_4
    invoke-static {v0}, Lcom/android/calendar/CalendarController;->launchSettings(Landroid/app/Activity;)V

    goto :goto_1

    .line 863
    :cond_5
    sget v2, Lcom/android/calendar/R$id;->help:I

    if-ne v1, v2, :cond_6

    .line 864
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getDrawerExtensions()Lcom/android/calendar/calendarlist/DrawerExtensionsInterface;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->default_help_context:I

    .line 865
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$id;->swipe_refresh_layout:I

    .line 864
    invoke-interface {v1, v0, v2, v3}, Lcom/android/calendar/calendarlist/DrawerExtensionsInterface;->showHelp(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_1

    .line 868
    :cond_6
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getDrawerExtensions()Lcom/android/calendar/calendarlist/DrawerExtensionsInterface;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/android/calendar/calendarlist/DrawerExtensionsInterface;->performExtra(Landroid/content/Context;I)V

    goto :goto_1
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 833
    invoke-super {p0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onDrawerClosed(Landroid/view/View;)V

    .line 834
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$9;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-virtual {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->invalidateOptionsMenu()V

    .line 835
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$9;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerFragment:Lcom/android/calendar/calendarlist/DrawerFragment;
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$1600(Lcom/android/calendar/AllInOneCalendarActivity;)Lcom/android/calendar/calendarlist/DrawerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/calendarlist/DrawerFragment;->onDrawerClosed()V

    .line 836
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$9;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$1700(Lcom/android/calendar/AllInOneCalendarActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/AllInOneCalendarActivity$9$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/AllInOneCalendarActivity$9$1;-><init>(Lcom/android/calendar/AllInOneCalendarActivity$9;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 843
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity$9;->handlePendingDrawerAction()V

    .line 844
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 882
    invoke-super {p0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onDrawerOpened(Landroid/view/View;)V

    .line 884
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$9;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-virtual {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->invalidateOptionsMenu()V

    .line 885
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$9;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$1700(Lcom/android/calendar/AllInOneCalendarActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/AllInOneCalendarActivity$9$3;

    invoke-direct {v1, p0}, Lcom/android/calendar/AllInOneCalendarActivity$9$3;-><init>(Lcom/android/calendar/AllInOneCalendarActivity$9;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 892
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 896
    sub-float v0, v5, p2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v0, v3

    float-to-int v3, v0

    .line 899
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$9;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mTodayMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$2000(Lcom/android/calendar/AllInOneCalendarActivity;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$9;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mTodayMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$2000(Lcom/android/calendar/AllInOneCalendarActivity;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 901
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$9;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mTodayMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$2000(Lcom/android/calendar/AllInOneCalendarActivity;)Landroid/view/MenuItem;

    move-result-object v4

    cmpl-float v0, p2, v5

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$9;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mOverflowMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$2100(Lcom/android/calendar/AllInOneCalendarActivity;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 906
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$9;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mOverflowMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$2100(Lcom/android/calendar/AllInOneCalendarActivity;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 907
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$9;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mOverflowMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$2100(Lcom/android/calendar/AllInOneCalendarActivity;)Landroid/view/MenuItem;

    move-result-object v0

    cmpl-float v4, p2, v5

    if-eqz v4, :cond_4

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 911
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$9;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$2200(Lcom/android/calendar/AllInOneCalendarActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 912
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$9;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$2300(Lcom/android/calendar/AllInOneCalendarActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$9;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    .line 913
    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/calendar/AllInOneCalendarActivity;->access$2300(Lcom/android/calendar/AllInOneCalendarActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 912
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 914
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$9;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$2400(Lcom/android/calendar/AllInOneCalendarActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 915
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$9;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$2200(Lcom/android/calendar/AllInOneCalendarActivity;)Landroid/view/View;

    move-result-object v0

    cmpl-float v1, p2, v5

    if-eqz v1, :cond_5

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 918
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 901
    goto :goto_0

    :cond_4
    move v1, v2

    .line 907
    goto :goto_1

    .line 916
    :cond_5
    const/16 v2, 0x8

    goto :goto_2
.end method
