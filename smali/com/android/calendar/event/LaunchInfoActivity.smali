.class public Lcom/android/calendar/event/LaunchInfoActivity;
.super Landroid/app/Activity;
.source "LaunchInfoActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sCompletedOobeThisRun:Z


# instance fields
.field private mGmsErrorDialog:Landroid/app/Dialog;

.field private mStorageDisabledDialog:Lcom/android/calendar/StorageDisabledDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/android/calendar/event/LaunchInfoActivity;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/LaunchInfoActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/LaunchInfoActivity;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/calendar/event/LaunchInfoActivity;->tryStartup()V

    return-void
.end method

.method private addOpenGeneralPreferencesExtras(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 358
    const-string v0, ":android:show_fragment"

    const-string v1, "com.android.calendar.timely.settings.GeneralPreferences"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const-string v0, ":android:show_fragment_title"

    sget v1, Lcom/android/calendar/R$string;->menu_category_general_preferences:I

    .line 361
    invoke-virtual {p0, v1}, Lcom/android/calendar/event/LaunchInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    return-void
.end method

.method private displayGmsUnrecoverableErrorMessage(I)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 199
    sget v0, Lcom/android/calendar/R$string;->gms_core_unrecoverable_error:I

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 200
    sget-object v0, Lcom/android/calendar/event/LaunchInfoActivity;->TAG:Ljava/lang/String;

    const-string v1, "Not a user resolvable gms core error %d"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 201
    return-void
.end method

.method public static handleCompleteFullOobe(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 79
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getExtensions()Lcom/android/calendar/UnifiedExtensions;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/UnifiedExtensions;->getWhatsNew()Lcom/android/calendar/WhatsNewFactory;

    move-result-object v0

    .line 80
    invoke-static {p0}, Lcom/google/android/calendar/Accounts;->getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 79
    invoke-virtual {v0, p0, v1}, Lcom/android/calendar/WhatsNewFactory;->onCompleteOobe(Landroid/content/Context;Ljava/util/List;)V

    .line 81
    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 263
    const-string v0, "com.google.android.calendar.ICalLauncher"

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 265
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getExtensions()Lcom/android/calendar/UnifiedExtensions;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/calendar/UnifiedExtensions;->getIcalActivityClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 266
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/LaunchInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    const-string v0, "com.google.android.calendar.timely.settings.CalendarPublicPreferenceActvity"

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    invoke-direct {p0}, Lcom/android/calendar/event/LaunchInfoActivity;->launchSettings()V

    goto :goto_0

    .line 275
    :cond_2
    new-instance v0, Lcom/android/calendar/GoogleCalendarUriIntentFilter;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 277
    invoke-virtual {v0}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->tryHandle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 282
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 283
    invoke-static {p0}, Lcom/android/calendar/launch/LaunchIntentConstants;->getEditAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/event/LaunchInfoActivity;->launchAllInOne(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_3
    const-string v1, "android.intent.action.INSERT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    .line 285
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 286
    :cond_4
    invoke-static {p0}, Lcom/android/calendar/launch/LaunchIntentConstants;->getInsertAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/event/LaunchInfoActivity;->launchAllInOne(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_5
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 288
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 289
    if-eqz v1, :cond_b

    .line 290
    invoke-virtual {p0}, Lcom/android/calendar/event/LaunchInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 291
    const-string v3, "vnd.android.cursor.item/event"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 292
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 293
    invoke-static {p1}, Lcom/android/calendar/Utils;->isTargetAllInOne(Landroid/content/Intent;)Z

    move-result v0

    .line 294
    if-eqz v0, :cond_6

    .line 295
    invoke-static {p0}, Lcom/android/calendar/launch/LaunchIntentConstants;->getViewAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/event/LaunchInfoActivity;->launchAllInOne(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :cond_6
    invoke-static {p1}, Lcom/android/calendar/Utils;->isInternalSource(Landroid/content/Intent;)Z

    move-result v1

    .line 299
    if-eqz v1, :cond_7

    .line 300
    invoke-static {p1}, Lcom/android/calendar/Utils;->containsTaskBundle(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 301
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 302
    const-class v2, Lcom/android/calendar/event/EventInfoActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 303
    const v2, 0x8000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 304
    if-nez v1, :cond_8

    .line 306
    const-string v1, "intent_source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 308
    if-nez v1, :cond_8

    .line 309
    invoke-static {v0}, Lcom/android/calendar/Utils;->setThirdPartySource(Landroid/content/Intent;)V

    .line 312
    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/LaunchInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 315
    :cond_9
    const-string v3, "time/epoch"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 316
    invoke-direct {p0, p1, v0}, Lcom/android/calendar/event/LaunchInfoActivity;->launchAllInOne(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 318
    :cond_a
    if-nez v2, :cond_b

    .line 319
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 320
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "task"

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 321
    invoke-static {p0}, Lcom/android/calendar/launch/LaunchIntentConstants;->getTaskViewAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/event/LaunchInfoActivity;->launchAllInOne(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 326
    :cond_b
    invoke-static {p0}, Lcom/android/calendar/launch/LaunchIntentConstants;->getViewAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/event/LaunchInfoActivity;->launchAllInOne(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 327
    :cond_c
    invoke-static {p0}, Lcom/android/calendar/launch/LaunchIntentConstants;->getFindTimeAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 328
    invoke-direct {p0, p1}, Lcom/android/calendar/event/LaunchInfoActivity;->launchFindTime(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 330
    :cond_d
    invoke-direct {p0, p1, v0}, Lcom/android/calendar/event/LaunchInfoActivity;->launchAllInOne(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handleStorageDisabledDialog(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 383
    if-nez p1, :cond_2

    .line 384
    iget-object v0, p0, Lcom/android/calendar/event/LaunchInfoActivity;->mStorageDisabledDialog:Lcom/android/calendar/StorageDisabledDialog;

    if-nez v0, :cond_0

    .line 385
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/LaunchInfoActivity;->setRequestedOrientation(I)V

    .line 386
    new-instance v0, Lcom/android/calendar/StorageDisabledDialog;

    invoke-direct {v0, p0}, Lcom/android/calendar/StorageDisabledDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/event/LaunchInfoActivity;->mStorageDisabledDialog:Lcom/android/calendar/StorageDisabledDialog;

    .line 387
    iget-object v0, p0, Lcom/android/calendar/event/LaunchInfoActivity;->mStorageDisabledDialog:Lcom/android/calendar/StorageDisabledDialog;

    new-instance v1, Lcom/android/calendar/event/LaunchInfoActivity$4;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/LaunchInfoActivity$4;-><init>(Lcom/android/calendar/event/LaunchInfoActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/StorageDisabledDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 394
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->analytics_category_sync_warnings:I

    .line 395
    invoke-virtual {p0, v1}, Lcom/android/calendar/event/LaunchInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/android/calendar/R$string;->analytics_action_storage_disabled_dialog:I

    .line 396
    invoke-virtual {p0, v1}, Lcom/android/calendar/event/LaunchInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v1, Lcom/android/calendar/R$string;->analytics_label_displayed:I

    .line 397
    invoke-virtual {p0, v1}, Lcom/android/calendar/event/LaunchInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    .line 395
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/LaunchInfoActivity;->mStorageDisabledDialog:Lcom/android/calendar/StorageDisabledDialog;

    invoke-virtual {v0}, Lcom/android/calendar/StorageDisabledDialog;->show()V

    .line 413
    :cond_1
    :goto_0
    return-void

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/LaunchInfoActivity;->mStorageDisabledDialog:Lcom/android/calendar/StorageDisabledDialog;

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/android/calendar/event/LaunchInfoActivity;->mStorageDisabledDialog:Lcom/android/calendar/StorageDisabledDialog;

    invoke-virtual {v0}, Lcom/android/calendar/StorageDisabledDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 403
    iget-object v0, p0, Lcom/android/calendar/event/LaunchInfoActivity;->mStorageDisabledDialog:Lcom/android/calendar/StorageDisabledDialog;

    invoke-virtual {v0}, Lcom/android/calendar/StorageDisabledDialog;->dismiss()V

    .line 405
    :cond_3
    iput-object v5, p0, Lcom/android/calendar/event/LaunchInfoActivity;->mStorageDisabledDialog:Lcom/android/calendar/StorageDisabledDialog;

    .line 407
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->analytics_category_sync_warnings:I

    .line 408
    invoke-virtual {p0, v1}, Lcom/android/calendar/event/LaunchInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/android/calendar/R$string;->analytics_action_storage_disabled_dialog:I

    .line 409
    invoke-virtual {p0, v1}, Lcom/android/calendar/event/LaunchInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v1, Lcom/android/calendar/R$string;->analytics_label_enabled:I

    .line 410
    invoke-virtual {p0, v1}, Lcom/android/calendar/event/LaunchInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    .line 408
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private launchAllInOne(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 368
    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 369
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    const-class v1, Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 371
    const-string v1, "intent_source"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 372
    if-nez v1, :cond_0

    .line 374
    invoke-static {v0}, Lcom/android/calendar/Utils;->setThirdPartySource(Landroid/content/Intent;)V

    .line 376
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/LaunchInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 377
    return-void
.end method

.method private launchFindTime(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 421
    invoke-static {}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->getInstance()Lcom/google/android/gms/common/GoogleSignatureVerifier;

    move-result-object v0

    .line 422
    invoke-virtual {p0}, Lcom/android/calendar/event/LaunchInfoActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/calendar/event/LaunchInfoActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->verifyPackageIsGoogleSigned(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 423
    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 424
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 425
    const-class v1, Lcom/android/calendar/event/FindTimeActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 426
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/LaunchInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 427
    return-void
.end method

.method private launchSettings()V
    .locals 2

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/android/calendar/event/LaunchInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 338
    const/high16 v1, 0x800000

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/event/LaunchInfoActivity;->removeFlag(Landroid/content/Intent;I)V

    .line 342
    const-string v1, ":android:show_fragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 343
    const-string v1, ":android:show_fragment_args"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 344
    const-string v1, ":android:show_fragment_short_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 345
    const-string v1, ":android:show_fragment_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 348
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getExtensions()Lcom/android/calendar/UnifiedExtensions;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/calendar/UnifiedExtensions;->getSettingsActivityClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 350
    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    invoke-direct {p0, v0}, Lcom/android/calendar/event/LaunchInfoActivity;->addOpenGeneralPreferencesExtras(Landroid/content/Intent;)V

    .line 354
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/LaunchInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 355
    return-void
.end method

.method private prepareIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 227
    sget-object v0, Lcom/android/calendar/event/LaunchInfoActivity;->TAG:Ljava/lang/String;

    const-string v1, "launchApp intent: %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 228
    sget-object v0, Lcom/android/calendar/event/LaunchInfoActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_1

    .line 231
    const-string v1, "intent_source"

    const-string v2, "unknown"

    .line 232
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    sget-object v1, Lcom/android/calendar/event/LaunchInfoActivity;->TAG:Ljava/lang/String;

    const-string v2, "Received %s from %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 239
    :cond_0
    :goto_0
    const/high16 v0, 0x800000

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/event/LaunchInfoActivity;->removeFlag(Landroid/content/Intent;I)V

    .line 240
    return-object p1

    .line 235
    :cond_1
    sget-object v0, Lcom/android/calendar/event/LaunchInfoActivity;->TAG:Ljava/lang/String;

    const-string v1, "Received %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private removeFlag(Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 416
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 417
    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 418
    return-void
.end method

.method private shouldShowInitialWelcome()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 162
    invoke-virtual {p0}, Lcom/android/calendar/event/LaunchInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lcom/android/calendar/launch/LaunchIntentConstants;->isFindTimeIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 165
    :goto_0
    sget-boolean v3, Lcom/android/calendar/event/LaunchInfoActivity;->sCompletedOobeThisRun:Z

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    .line 166
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getExtensions()Lcom/android/calendar/UnifiedExtensions;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/UnifiedExtensions;->getWhatsNew()Lcom/android/calendar/WhatsNewFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/calendar/WhatsNewFactory;->shouldShowInitialWelcome(Lcom/android/calendar/event/LaunchInfoActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 163
    goto :goto_0

    :cond_1
    move v1, v2

    .line 166
    goto :goto_1
.end method

.method private shouldShowRequestPermissionsActivity()Z
    .locals 1

    .prologue
    .line 204
    invoke-static {p0}, Lcom/android/calendar/Utils;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showGetAccountsIssueDialog()V
    .locals 6

    .prologue
    .line 140
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/calendar/R$string;->restart_device_dialog_text:I

    .line 141
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/calendar/event/LaunchInfoActivity$2;

    invoke-direct {v2, p0}, Lcom/android/calendar/event/LaunchInfoActivity$2;-><init>(Lcom/android/calendar/event/LaunchInfoActivity;)V

    .line 142
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/event/LaunchInfoActivity$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/LaunchInfoActivity$1;-><init>(Lcom/android/calendar/event/LaunchInfoActivity;)V

    .line 148
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 157
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    const-string v2, "app_start_issue"

    const-string v3, "caller_unsigned_dialog"

    const-string v4, "displayed"

    const/4 v5, 0x0

    move-object v1, p0

    .line 158
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 159
    return-void
.end method

.method private showGmsErrorDialog(Lcom/google/android/gms/common/GoogleApiAvailability;I)V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/calendar/event/LaunchInfoActivity;->mGmsErrorDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 180
    const/4 v0, 0x0

    new-instance v1, Lcom/android/calendar/event/LaunchInfoActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/android/calendar/event/LaunchInfoActivity$3;-><init>(Lcom/android/calendar/event/LaunchInfoActivity;Lcom/google/android/gms/common/GoogleApiAvailability;)V

    invoke-virtual {p1, p0, p2, v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/LaunchInfoActivity;->mGmsErrorDialog:Landroid/app/Dialog;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/LaunchInfoActivity;->mGmsErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/calendar/event/LaunchInfoActivity;->mGmsErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 196
    :cond_1
    return-void
.end method

.method private showInitialWelcome()V
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getExtensions()Lcom/android/calendar/UnifiedExtensions;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/UnifiedExtensions;->getWhatsNew()Lcom/android/calendar/WhatsNewFactory;

    move-result-object v0

    .line 171
    invoke-virtual {v0, p0}, Lcom/android/calendar/WhatsNewFactory;->showInitialWelcome(Lcom/android/calendar/event/LaunchInfoActivity;)V

    .line 174
    invoke-static {p0}, Lcom/android/calendar/timely/BottomPromo;->setNewAppStartTimeMillis(Landroid/content/Context;)V

    .line 175
    invoke-static {p0}, Lcom/android/calendar/timely/rooms/promo/RoomBookingPromoManager;->promoDeliveredFromNewAppInstall(Landroid/content/Context;)V

    .line 176
    return-void
.end method

.method private showRequestPermissionsActivity()V
    .locals 2

    .prologue
    .line 208
    invoke-static {p0}, Lcom/android/calendar/RequestPermissionsActivity;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/LaunchInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 210
    return-void
.end method

.method private tryStartup()V
    .locals 3

    .prologue
    .line 90
    invoke-static {}, Lcom/google/android/calendar/Accounts;->isGetAccountsIssuePresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-direct {p0}, Lcom/android/calendar/event/LaunchInfoActivity;->showGetAccountsIssueDialog()V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/event/LaunchInfoActivity;->shouldShowInitialWelcome()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    invoke-direct {p0}, Lcom/android/calendar/event/LaunchInfoActivity;->showInitialWelcome()V

    goto :goto_0

    .line 100
    :cond_2
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    .line 102
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUserResolvableError(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 103
    invoke-direct {p0, v0, v1}, Lcom/android/calendar/event/LaunchInfoActivity;->showGmsErrorDialog(Lcom/google/android/gms/common/GoogleApiAvailability;I)V

    goto :goto_0

    .line 106
    :cond_3
    if-eqz v1, :cond_4

    .line 107
    invoke-direct {p0, v1}, Lcom/android/calendar/event/LaunchInfoActivity;->displayGmsUnrecoverableErrorMessage(I)V

    .line 108
    invoke-virtual {p0}, Lcom/android/calendar/event/LaunchInfoActivity;->finish()V

    goto :goto_0

    .line 112
    :cond_4
    invoke-direct {p0}, Lcom/android/calendar/event/LaunchInfoActivity;->shouldShowRequestPermissionsActivity()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 113
    invoke-direct {p0}, Lcom/android/calendar/event/LaunchInfoActivity;->showRequestPermissionsActivity()V

    goto :goto_0

    .line 117
    :cond_5
    invoke-static {p0}, Lcom/android/calendar/Utils;->isCalendarStorageEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 118
    invoke-direct {p0, v0}, Lcom/android/calendar/event/LaunchInfoActivity;->handleStorageDisabledDialog(Z)V

    .line 119
    if-eqz v0, :cond_0

    .line 123
    sget-boolean v0, Lcom/android/calendar/event/LaunchInfoActivity;->sCompletedOobeThisRun:Z

    if-eqz v0, :cond_6

    .line 124
    invoke-static {p0}, Lcom/android/calendar/event/LaunchInfoActivity;->handleCompleteFullOobe(Landroid/app/Activity;)V

    .line 127
    :cond_6
    invoke-virtual {p0}, Lcom/android/calendar/event/LaunchInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_7

    .line 129
    invoke-direct {p0, v0}, Lcom/android/calendar/event/LaunchInfoActivity;->prepareIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/LaunchInfoActivity;->handleIntent(Landroid/content/Intent;)V

    .line 131
    :cond_7
    invoke-virtual {p0}, Lcom/android/calendar/event/LaunchInfoActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 214
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 215
    sget v0, Lcom/android/calendar/WhatsNewFactory;->WHATS_NEW_REQUEST_CODE:I

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 216
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/calendar/event/LaunchInfoActivity;->sCompletedOobeThisRun:Z

    .line 220
    :cond_0
    if-eq p2, v1, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/android/calendar/event/LaunchInfoActivity;->finish()V

    .line 223
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 86
    invoke-direct {p0}, Lcom/android/calendar/event/LaunchInfoActivity;->tryStartup()V

    .line 87
    return-void
.end method
