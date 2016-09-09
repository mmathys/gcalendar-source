.class public abstract Lcom/android/calendar/AbstractCalendarActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AbstractCalendarActivity.java"

# interfaces
.implements Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityResultNotifierHelper:Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierHelper;

.field private mOverlayFragmentTag:Ljava/lang/String;

.field protected mService:Lcom/android/calendar/AsyncQueryService;

.field private mUriForDial:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/android/calendar/AbstractCalendarActivity;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/AbstractCalendarActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/AbstractCalendarActivity;->mOverlayFragmentTag:Ljava/lang/String;

    return-void
.end method

.method private clearUriForDial()V
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/AbstractCalendarActivity;->mUriForDial:Landroid/net/Uri;

    .line 236
    return-void
.end method

.method private makeCall(ZLandroid/net/Uri;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 222
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    if-eqz p1, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/android/calendar/AbstractCalendarActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.telephony"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 225
    :goto_0
    new-instance v2, Landroid/content/Intent;

    if-eqz v0, :cond_1

    const-string v0, "android.intent.action.CALL"

    :goto_1
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0}, Lcom/android/calendar/AbstractCalendarActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_2

    .line 228
    sget v0, Lcom/android/calendar/R$string;->no_available_dialer:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 232
    :goto_2
    return-void

    .line 224
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 225
    :cond_1
    const-string v0, "android.intent.action.DIAL"

    goto :goto_1

    .line 231
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/calendar/AbstractCalendarActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method private registerPermissionResponse(ILjava/lang/String;I)V
    .locals 12

    .prologue
    .line 272
    packed-switch p1, :pswitch_data_0

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 274
    :pswitch_0
    sget v0, Lcom/android/calendar/R$string;->analytics_action_calendar_permissions:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/AbstractCalendarActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 275
    const-string v0, "calendar_permissions_never_ask_detected"

    .line 276
    const-string v4, "calendar_permissions_request_count"

    .line 277
    const-string v1, "has_granted_calendar_permissions"

    .line 278
    const-string v2, "has_received_calendar_permissions_response"

    move-object v8, v1

    move-object v9, v2

    move-object v10, v4

    move-object v2, v0

    .line 305
    :goto_1
    if-nez p3, :cond_4

    const/4 v0, 0x1

    .line 306
    :goto_2
    invoke-static {p0, p2}, Lcom/google/android/calendar/PermissionsUtil;->shouldShowRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    .line 307
    if-nez v0, :cond_5

    if-nez v1, :cond_5

    const/4 v1, 0x1

    .line 309
    :goto_3
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 312
    if-eqz v1, :cond_1

    .line 314
    const/4 v4, 0x0

    invoke-interface {v11, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 319
    :cond_1
    const-wide/16 v4, 0x0

    invoke-interface {v11, v10, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    if-eqz v0, :cond_6

    const-wide/16 v4, 0x0

    :goto_4
    add-long/2addr v6, v4

    .line 320
    if-eqz v0, :cond_7

    const-wide/16 v4, 0x0

    .line 322
    :goto_5
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 323
    invoke-interface {v11, v10, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 324
    invoke-interface {v11, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 325
    if-eqz v0, :cond_2

    if-eqz v8, :cond_2

    .line 326
    const/4 v2, 0x1

    invoke-interface {v11, v8, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 328
    :cond_2
    if-eqz v9, :cond_3

    .line 329
    const/4 v2, 0x1

    invoke-interface {v11, v9, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 331
    :cond_3
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 333
    if-eqz v3, :cond_0

    .line 334
    sget v2, Lcom/android/calendar/R$string;->analytics_category_permissions:I

    invoke-virtual {p0, v2}, Lcom/android/calendar/AbstractCalendarActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 335
    if-eqz v0, :cond_8

    .line 336
    sget v4, Lcom/android/calendar/R$string;->analytics_label_granted:I

    invoke-virtual {p0, v4}, Lcom/android/calendar/AbstractCalendarActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 338
    :goto_6
    if-eqz v0, :cond_9

    :goto_7
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 339
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    move-object v1, p0

    .line 340
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 281
    :pswitch_1
    sget v0, Lcom/android/calendar/R$string;->analytics_action_contacts_permissions:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/AbstractCalendarActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 282
    const-string v0, "contacts_permissions_never_ask_detected"

    .line 283
    const-string v4, "contacts_permissions_request_count"

    .line 284
    const-string v1, "has_granted_contacts_permissions"

    .line 285
    const/4 v2, 0x0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v4

    move-object v2, v0

    .line 286
    goto :goto_1

    .line 288
    :pswitch_2
    sget v0, Lcom/android/calendar/R$string;->analytics_action_location_permissions:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/AbstractCalendarActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 289
    const-string v0, "location_permissions_never_ask_detected"

    .line 290
    const-string v4, "location_permissions_request_count"

    .line 291
    const/4 v1, 0x0

    .line 292
    const/4 v2, 0x0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v4

    move-object v2, v0

    .line 293
    goto/16 :goto_1

    .line 295
    :pswitch_3
    sget v0, Lcom/android/calendar/R$string;->analytics_action_call_permissions:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/AbstractCalendarActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 296
    const-string v0, "call_permissions_never_ask_detected"

    .line 297
    const-string v4, "call_permissions_request_count"

    .line 298
    const/4 v1, 0x0

    .line 299
    const/4 v2, 0x0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v4

    move-object v2, v0

    .line 300
    goto/16 :goto_1

    .line 305
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 307
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 319
    :cond_6
    const-wide/16 v4, 0x1

    goto :goto_4

    :cond_7
    move-wide v4, v6

    .line 320
    goto :goto_5

    .line 337
    :cond_8
    sget v4, Lcom/android/calendar/R$string;->analytics_label_denied:I

    invoke-virtual {p0, v4}, Lcom/android/calendar/AbstractCalendarActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 338
    :cond_9
    if-eqz v1, :cond_a

    const-wide/16 v6, 0x1

    goto :goto_7

    :cond_a
    const-wide/16 v6, 0x0

    goto :goto_7

    .line 272
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setActionBarTitle(I)V
    .locals 2

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/android/calendar/AbstractCalendarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 577
    if-eqz v0, :cond_0

    .line 578
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 579
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 580
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    .line 582
    :cond_0
    return-void
.end method

.method private setToolbarAsActionBarIfAble(Z)V
    .locals 2

    .prologue
    .line 561
    sget v0, Lcom/android/calendar/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/AbstractCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 562
    if-eqz v0, :cond_1

    .line 563
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 564
    if-eqz p1, :cond_0

    .line 566
    sget v1, Lcom/android/calendar/R$drawable;->ic_menu:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 567
    sget v1, Lcom/android/calendar/R$string;->accessibility_drawer_open:I

    .line 568
    invoke-virtual {p0, v1}, Lcom/android/calendar/AbstractCalendarActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 567
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 571
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/calendar/AbstractCalendarActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 573
    :cond_1
    return-void
.end method


# virtual methods
.method public actionBarIsNull()Z
    .locals 1

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/android/calendar/AbstractCalendarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 108
    invoke-static {}, Lcom/android/calendar/Utils;->isNOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {p1}, Lcom/google/android/calendar/utils/ResourceConfigOverrider;->getOverrideConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0, v0}, Lcom/android/calendar/AbstractCalendarActivity;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 116
    :cond_0
    return-void
.end method

.method public configureICalActionBarPreL(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 502
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    :goto_0
    return-void

    .line 505
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/calendar/AbstractCalendarActivity;->setToolbarAsActionBarIfAble(Z)V

    .line 506
    invoke-virtual {p0, v1}, Lcom/android/calendar/AbstractCalendarActivity;->initializeActionBar(Z)V

    .line 507
    invoke-direct {p0, p1}, Lcom/android/calendar/AbstractCalendarActivity;->setActionBarTitle(I)V

    goto :goto_0
.end method

.method protected createAllInOneMenu(Landroid/view/Menu;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 131
    invoke-virtual {p0}, Lcom/android/calendar/AbstractCalendarActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$menu;->all_in_one_title_bar:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 133
    sget v0, Lcom/android/calendar/R$id;->action_today:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 138
    invoke-static {v0, p0, p2}, Lcom/android/calendar/Utils;->setTodayIcon(Landroid/graphics/drawable/LayerDrawable;Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected finishDismissOverlay(Lcom/android/calendar/OverlayFragment;)V
    .locals 2

    .prologue
    .line 360
    invoke-virtual {p1}, Lcom/android/calendar/OverlayFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/calendar/OverlayFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/AbstractCalendarActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 365
    invoke-virtual {p0, v0, p1}, Lcom/android/calendar/AbstractCalendarActivity;->getFirstBackStackEntry(Landroid/app/FragmentManager;Landroid/app/Fragment;)I

    move-result v1

    .line 368
    if-lez v1, :cond_2

    .line 369
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/AbstractCalendarActivity;->setOverlayFragmentTag(Ljava/lang/String;)V

    .line 374
    :goto_1
    invoke-virtual {p1}, Lcom/android/calendar/OverlayFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 371
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/AbstractCalendarActivity;->setOverlayFragmentTag(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected getActionBarHeight()I
    .locals 1

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/android/calendar/AbstractCalendarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getHeight()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getAsyncQueryService()Lcom/android/calendar/AsyncQueryService;
    .locals 1

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/AbstractCalendarActivity;->mService:Lcom/android/calendar/AsyncQueryService;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/android/calendar/AsyncQueryService;

    invoke-direct {v0, p0}, Lcom/android/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/AbstractCalendarActivity;->mService:Lcom/android/calendar/AsyncQueryService;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AbstractCalendarActivity;->mService:Lcom/android/calendar/AsyncQueryService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getEventInfoFragment()Lcom/android/calendar/event/EventInfoFragment;
    .locals 3

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/android/calendar/AbstractCalendarActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 427
    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 428
    if-lez v1, :cond_0

    .line 429
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 430
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 431
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 432
    instance-of v1, v0, Lcom/android/calendar/event/EventInfoFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    check-cast v0, Lcom/android/calendar/event/EventInfoFragment;

    .line 437
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getFirstBackStackEntry(Landroid/app/FragmentManager;Landroid/app/Fragment;)I
    .locals 4

    .prologue
    .line 403
    invoke-virtual {p2}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 404
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 405
    invoke-virtual {p1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    .line 406
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 407
    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 413
    :goto_1
    return v0

    .line 406
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 413
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected getOverlayFragment()Lcom/android/calendar/OverlayFragment;
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/calendar/AbstractCalendarActivity;->mOverlayFragmentTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    const/4 v0, 0x0

    .line 444
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/AbstractCalendarActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/AbstractCalendarActivity;->mOverlayFragmentTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/OverlayFragment;

    goto :goto_0
.end method

.method protected getOverlayFragmentTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/calendar/AbstractCalendarActivity;->mOverlayFragmentTag:Ljava/lang/String;

    return-object v0
.end method

.method protected hideActionBar()V
    .locals 1

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/android/calendar/AbstractCalendarActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 495
    invoke-virtual {p0}, Lcom/android/calendar/AbstractCalendarActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/AbstractCalendarActivity;->actionBarIsNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/android/calendar/AbstractCalendarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    goto :goto_0
.end method

.method protected initializeActionBar(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 472
    invoke-virtual {p0}, Lcom/android/calendar/AbstractCalendarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    .line 473
    if-eqz v2, :cond_0

    .line 474
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p1, :cond_1

    move v0, v1

    .line 475
    :goto_0
    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 474
    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 477
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v3, 0x106000d

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v0}, Landroid/support/v7/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 478
    invoke-virtual {v2, v1}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 479
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 481
    :cond_0
    return-void

    .line 475
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/AbstractCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/android/calendar/R$color;->timely_background_color:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public makeCall(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 197
    invoke-static {}, Lcom/android/calendar/Utils;->isMOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iput-object p1, p0, Lcom/android/calendar/AbstractCalendarActivity;->mUriForDial:Landroid/net/Uri;

    .line 199
    invoke-static {p0}, Lcom/android/calendar/Utils;->hasCallPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/calendar/AbstractCalendarActivity;->makeCall(ZLandroid/net/Uri;)V

    .line 201
    invoke-direct {p0}, Lcom/android/calendar/AbstractCalendarActivity;->clearUriForDial()V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    invoke-static {p0}, Lcom/android/calendar/Utils;->requestCallPermissions(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 164
    sget v0, Lcom/android/calendar/WhatsNewFactory;->WHATS_NEW_REQUEST_CODE:I

    if-ne p1, v0, :cond_1

    .line 165
    if-nez p2, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/android/calendar/AbstractCalendarActivity;->finish()V

    .line 188
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-static {p0}, Lcom/android/calendar/event/LaunchInfoActivity;->handleCompleteFullOobe(Landroid/app/Activity;)V

    .line 174
    :cond_1
    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3ed

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3ef

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3f0

    if-ne p1, v0, :cond_3

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/AbstractCalendarActivity;->mActivityResultNotifierHelper:Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierHelper;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 187
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/android/calendar/AbstractCalendarActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    invoke-virtual {p0}, Lcom/android/calendar/AbstractCalendarActivity;->finishAfterTransition()V

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/AbstractCalendarActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getExtensions()Lcom/android/calendar/UnifiedExtensions;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/UnifiedExtensions;->configureStrictMode()V

    .line 88
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 241
    if-eqz p3, :cond_0

    array-length v0, p3

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_2

    .line 243
    :cond_0
    sget-object v0, Lcom/android/calendar/AbstractCalendarActivity;->TAG:Ljava/lang/String;

    const-string v2, "Empty request permissions result for request %d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 262
    :cond_1
    return-void

    .line 247
    :cond_2
    invoke-static {}, Lcom/google/android/calendar/PermissionsUtil;->clearCachedPermissions()V

    .line 248
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    move v0, v1

    .line 249
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 250
    aget-object v2, p2, v0

    invoke-static {v2}, Lcom/android/calendar/Utils;->groupOfPermission(Ljava/lang/String;)I

    move-result v2

    .line 251
    invoke-virtual {v4, v2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v5

    if-nez v5, :cond_3

    .line 252
    aget-object v5, p2, v0

    aget v6, p3, v0

    invoke-direct {p0, v2, v5, v6}, Lcom/android/calendar/AbstractCalendarActivity;->registerPermissionResponse(ILjava/lang/String;I)V

    .line 253
    invoke-virtual {v4, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 256
    :cond_3
    const/16 v5, 0x3ec

    if-ne p1, v5, :cond_4

    const/4 v5, 0x3

    if-ne v2, v5, :cond_4

    .line 258
    aget v2, p3, v0

    if-nez v2, :cond_5

    move v2, v3

    :goto_1
    iget-object v5, p0, Lcom/android/calendar/AbstractCalendarActivity;->mUriForDial:Landroid/net/Uri;

    invoke-direct {p0, v2, v5}, Lcom/android/calendar/AbstractCalendarActivity;->makeCall(ZLandroid/net/Uri;)V

    .line 259
    invoke-direct {p0}, Lcom/android/calendar/AbstractCalendarActivity;->clearUriForDial()V

    .line 249
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v2, v1

    .line 258
    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 100
    const-string v0, "uri_for_dial"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/calendar/AbstractCalendarActivity;->mUriForDial:Landroid/net/Uri;

    .line 101
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 94
    const-string v0, "uri_for_dial"

    iget-object v1, p0, Lcom/android/calendar/AbstractCalendarActivity;->mUriForDial:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 95
    return-void
.end method

.method public openDialer(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/calendar/AbstractCalendarActivity;->makeCall(ZLandroid/net/Uri;)V

    .line 215
    return-void
.end method

.method public registerActivityResultListener(Lcom/android/calendar/ActivityResultNotifications$ActivityResultListener;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/calendar/AbstractCalendarActivity;->mActivityResultNotifierHelper:Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierHelper;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierHelper;

    invoke-direct {v0}, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierHelper;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/AbstractCalendarActivity;->mActivityResultNotifierHelper:Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierHelper;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AbstractCalendarActivity;->mActivityResultNotifierHelper:Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierHelper;

    invoke-virtual {v0, p1}, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierHelper;->registerActivityResultListener(Lcom/android/calendar/ActivityResultNotifications$ActivityResultListener;)V

    .line 154
    return-void
.end method

.method public setActionBarElevation(F)V
    .locals 1

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/android/calendar/AbstractCalendarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setElevation(F)V

    .line 516
    return-void
.end method

.method protected setCustomActionBar(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 522
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/AbstractCalendarActivity;->setToolbarAsActionBarIfAble(Z)V

    .line 524
    invoke-virtual {p0}, Lcom/android/calendar/AbstractCalendarActivity;->actionBarIsNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/android/calendar/AbstractCalendarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v7

    .line 526
    const/16 v0, 0x12

    invoke-virtual {v7, v0}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(I)V

    .line 528
    sget v0, Lcom/android/calendar/R$id;->date_picker_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 530
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 531
    invoke-static {}, Lcom/android/calendar/DateTimeFormatHelper;->getInstance()Lcom/android/calendar/DateTimeFormatHelper;

    move-result-object v1

    const/16 v6, 0x34

    move-wide v4, v2

    invoke-virtual/range {v1 .. v6}, Lcom/android/calendar/DateTimeFormatHelper;->getDateRangeText(JJI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    new-instance v1, Landroid/support/v7/app/ActionBar$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v7, p1, v1}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V

    .line 535
    invoke-virtual {p0}, Lcom/android/calendar/AbstractCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$dimen;->desired_title_start_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 537
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/android/calendar/AbstractCalendarActivity$1;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/android/calendar/AbstractCalendarActivity$1;-><init>(Lcom/android/calendar/AbstractCalendarActivity;Landroid/view/View;ILandroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 557
    :cond_0
    return-void
.end method

.method protected setOverlayFragmentTag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/android/calendar/AbstractCalendarActivity;->mOverlayFragmentTag:Ljava/lang/String;

    .line 453
    return-void
.end method

.method protected showOverlayFragment(Ljava/lang/String;Lcom/android/calendar/OverlayFragment;)V
    .locals 2

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/android/calendar/AbstractCalendarActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 385
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 388
    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/OverlayFragment;

    .line 389
    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {p0, v0}, Lcom/android/calendar/AbstractCalendarActivity;->finishDismissOverlay(Lcom/android/calendar/OverlayFragment;)V

    .line 392
    :cond_0
    invoke-virtual {v1, p1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 393
    invoke-virtual {p2, v1, p1}, Lcom/android/calendar/OverlayFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 394
    invoke-virtual {p0, p1}, Lcom/android/calendar/AbstractCalendarActivity;->setOverlayFragmentTag(Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method public unregisterActivityResultListener(Lcom/android/calendar/ActivityResultNotifications$ActivityResultListener;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/calendar/AbstractCalendarActivity;->mActivityResultNotifierHelper:Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierHelper;

    invoke-virtual {v0, p1}, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierHelper;->unregisterActivityResultListener(Lcom/android/calendar/ActivityResultNotifications$ActivityResultListener;)V

    .line 160
    return-void
.end method
