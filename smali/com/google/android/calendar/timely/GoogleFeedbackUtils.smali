.class public Lcom/google/android/calendar/timely/GoogleFeedbackUtils;
.super Ljava/lang/Object;
.source "GoogleFeedbackUtils.java"


# static fields
.field private static final INSTANCES_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final UNLOGGED_PREFS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    const-class v0, Lcom/google/android/calendar/timely/GoogleFeedbackUtils;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/timely/GoogleFeedbackUtils;->TAG:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "preferences_quick_responses"

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/calendar/timely/GoogleFeedbackUtils;->UNLOGGED_PREFS:Ljava/util/HashSet;

    .line 81
    const/16 v0, 0x23

    new-array v1, v0, [Ljava/lang/String;

    const-string v0, "begin"

    aput-object v0, v1, v3

    const-string v0, "end"

    aput-object v0, v1, v4

    const/4 v0, 0x2

    const-string v2, "dtstart"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "dtend"

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string v2, "duration"

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-string v2, "allDay"

    aput-object v2, v1, v0

    const/4 v0, 0x6

    const-string v2, "title"

    aput-object v2, v1, v0

    const/4 v0, 0x7

    const-string v2, "_sync_id"

    aput-object v2, v1, v0

    const/16 v0, 0x8

    const-string v2, "eventStatus"

    aput-object v2, v1, v0

    const/16 v0, 0x9

    const-string v2, "organizer"

    aput-object v2, v1, v0

    const/16 v0, 0xa

    const-string v2, "isOrganizer"

    aput-object v2, v1, v0

    const/16 v0, 0xb

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v1, v0

    const/16 v0, 0xc

    const-string v2, "_id"

    aput-object v2, v1, v0

    const/16 v0, 0xd

    const-string v2, "event_id"

    aput-object v2, v1, v0

    const/16 v0, 0xe

    const-string v2, "calendar_id"

    aput-object v2, v1, v0

    const/16 v0, 0xf

    const-string v2, "ownerAccount"

    aput-object v2, v1, v0

    const/16 v0, 0x10

    const-string v2, "eventTimezone"

    aput-object v2, v1, v0

    const/16 v0, 0x11

    const-string v2, "eventEndTimezone"

    aput-object v2, v1, v0

    const/16 v0, 0x12

    const-string v2, "original_id"

    aput-object v2, v1, v0

    const/16 v0, 0x13

    const-string v2, "original_sync_id"

    aput-object v2, v1, v0

    const/16 v0, 0x14

    const-string v2, "originalInstanceTime"

    aput-object v2, v1, v0

    const/16 v0, 0x15

    const-string v2, "originalAllDay"

    aput-object v2, v1, v0

    const/16 v0, 0x16

    const-string v2, "dirty AS dirty"

    aput-object v2, v1, v0

    const/16 v2, 0x17

    .line 105
    invoke-static {}, Lcom/android/calendar/Utils;->isJellybeanMr2OrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "mutators"

    .line 107
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, " AS mutators"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/16 v0, 0x18

    const-string v2, "sync_data1 AS uid"

    aput-object v2, v1, v0

    const/16 v0, 0x19

    const-string v2, "sync_data2 AS sequence"

    aput-object v2, v1, v0

    const/16 v0, 0x1a

    const-string v2, "sync_data3 AS attendee_self_id"

    aput-object v2, v1, v0

    const/16 v0, 0x1b

    const-string v2, "sync_data4 AS etag"

    aput-object v2, v1, v0

    const/16 v0, 0x1c

    const-string v2, "sync_data5 AS modified"

    aput-object v2, v1, v0

    const/16 v0, 0x1d

    const-string v2, "sync_data8 AS habit_id_and_type"

    aput-object v2, v1, v0

    const/16 v0, 0x1e

    const-string v2, "sync_data9 AS extras"

    aput-object v2, v1, v0

    const/16 v0, 0x1f

    const-string v2, "rrule"

    aput-object v2, v1, v0

    const/16 v0, 0x20

    const-string v2, "rdate"

    aput-object v2, v1, v0

    const/16 v0, 0x21

    const-string v2, "exrule"

    aput-object v2, v1, v0

    const/16 v0, 0x22

    const-string v2, "exdate"

    aput-object v2, v1, v0

    sput-object v1, Lcom/google/android/calendar/timely/GoogleFeedbackUtils;->INSTANCES_PROJECTION:[Ljava/lang/String;

    .line 81
    return-void

    .line 107
    :cond_0
    const-string v0, "\'unknown\'"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addEssentialDataToFeedback(Lcom/google/android/gms/feedback/FeedbackOptions$Builder;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 325
    instance-of v0, p1, Lcom/android/calendar/Troubleshootable;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 326
    check-cast v0, Lcom/android/calendar/Troubleshootable;

    invoke-interface {v0}, Lcom/android/calendar/Troubleshootable;->getTroubleshootInfoBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 327
    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p0, v0}, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;->addPsdBundle(Landroid/os/Bundle;)Lcom/google/android/gms/feedback/FeedbackOptions$Builder;

    .line 332
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/calendar/timely/GoogleFeedbackUtils;->addSyncLogToFeedback(Lcom/google/android/gms/feedback/FeedbackOptions$Builder;Landroid/content/Context;)V

    .line 334
    const-string v0, "active_experiments"

    invoke-static {p1}, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->getActiveExperiments(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;->addPsd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions$Builder;

    .line 335
    return-void
.end method

.method private static addSyncLogToFeedback(Lcom/google/android/gms/feedback/FeedbackOptions$Builder;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 338
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/SyncLog;->hasSyncLogs(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    const-string v0, "sync_log"

    const-string v1, "text/plain"

    .line 340
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/SyncLog;->getCombinedSyncLogByteArray(Landroid/content/Context;)[B

    move-result-object v2

    .line 339
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;->addProductSpecificBinaryData(Ljava/lang/String;Ljava/lang/String;[B)Lcom/google/android/gms/feedback/FeedbackOptions$Builder;

    .line 341
    const-string v0, "sync_history"

    const-string v1, "text/plain"

    .line 342
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/SyncLog;->getCombinedSyncHistoryByteArray(Landroid/content/Context;)[B

    move-result-object v2

    .line 341
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;->addProductSpecificBinaryData(Ljava/lang/String;Ljava/lang/String;[B)Lcom/google/android/gms/feedback/FeedbackOptions$Builder;

    .line 344
    :cond_0
    return-void
.end method

.method private static getBitmapForView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 506
    if-eqz p0, :cond_0

    .line 507
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 508
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 510
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getBitmapFromActivityView(Landroid/app/Activity;I)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 498
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 499
    if-eqz v0, :cond_0

    .line 500
    invoke-static {v0}, Lcom/google/android/calendar/timely/GoogleFeedbackUtils;->getBitmapForView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 502
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getUriViewIntent(Landroid/app/Activity;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 402
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 403
    const-string v1, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 405
    return-object v0
.end method

.method public static launchHelpAndFeedback(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 248
    invoke-static {p0}, Lcom/google/android/calendar/timely/GoogleFeedbackUtils;->logSettings(Landroid/content/Context;)V

    .line 250
    sget v0, Lcom/android/calendar/R$string;->default_help_context:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    .line 255
    :cond_0
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    const-string v0, "android_app_help"

    .line 259
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 260
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 261
    const-string v2, "https://support.google.com/calendar/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "p"

    .line 262
    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "hl"

    .line 263
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 268
    invoke-static {p0, v0}, Lcom/google/android/calendar/timely/GoogleFeedbackUtils;->getUriViewIntent(Landroid/app/Activity;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 271
    sget v3, Lcom/android/calendar/R$string;->privacy_policy_link:I

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v10

    invoke-virtual {p0, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 272
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/google/android/calendar/timely/GoogleFeedbackUtils;->getUriViewIntent(Landroid/app/Activity;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    .line 275
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/google/android/libraries/social/licenses/LicenseMenuActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    sget v5, Lcom/android/calendar/R$string;->terms_of_service_link:I

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v10

    invoke-virtual {p0, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/calendar/timely/GoogleFeedbackUtils;->getUriViewIntent(Landroid/app/Activity;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 281
    sget v5, Lcom/android/calendar/R$string;->menu_help:I

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 282
    sget v6, Lcom/android/calendar/R$string;->privacy_policy:I

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 283
    sget v7, Lcom/android/calendar/R$string;->open_source_licenses_title:I

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 284
    sget v8, Lcom/android/calendar/R$string;->terms_of_service:I

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 286
    invoke-static {p1}, Lcom/google/android/gms/googlehelp/GoogleHelp;->newInstance(Ljava/lang/String;)Lcom/google/android/gms/googlehelp/GoogleHelp;

    move-result-object v9

    .line 287
    invoke-virtual {v9, v0}, Lcom/google/android/gms/googlehelp/GoogleHelp;->setFallbackSupportUri(Landroid/net/Uri;)Lcom/google/android/gms/googlehelp/GoogleHelp;

    move-result-object v0

    sget v9, Lcom/android/calendar/R$id;->web_help_menu:I

    .line 288
    invoke-virtual {v0, v9, v5, v2}, Lcom/google/android/gms/googlehelp/GoogleHelp;->addAdditionalOverflowMenuItem(ILjava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/googlehelp/GoogleHelp;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$id;->privacy_policy_menu:I

    .line 289
    invoke-virtual {v0, v2, v6, v3}, Lcom/google/android/gms/googlehelp/GoogleHelp;->addAdditionalOverflowMenuItem(ILjava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/googlehelp/GoogleHelp;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$id;->open_source_menu:I

    .line 291
    invoke-virtual {v0, v2, v7, v4}, Lcom/google/android/gms/googlehelp/GoogleHelp;->addAdditionalOverflowMenuItem(ILjava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/googlehelp/GoogleHelp;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$id;->terms_menu:I

    .line 293
    invoke-virtual {v0, v2, v8, v1}, Lcom/google/android/gms/googlehelp/GoogleHelp;->addAdditionalOverflowMenuItem(ILjava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/googlehelp/GoogleHelp;

    move-result-object v1

    .line 295
    if-eqz p2, :cond_2

    .line 296
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/calendar/timely/GoogleFeedbackUtils;->getBitmapFromActivityView(Landroid/app/Activity;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 299
    :goto_1
    if-eqz v0, :cond_3

    .line 302
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 303
    new-instance v3, Lcom/google/android/calendar/timely/GoogleFeedbackUtils$2;

    invoke-direct {v3, v0, p0, v1, v2}, Lcom/google/android/calendar/timely/GoogleFeedbackUtils$2;-><init>(Landroid/graphics/Bitmap;Landroid/app/Activity;Lcom/google/android/gms/googlehelp/GoogleHelp;Landroid/content/Context;)V

    new-array v0, v10, [Ljava/lang/Void;

    .line 320
    invoke-virtual {v3, v0}, Lcom/google/android/calendar/timely/GoogleFeedbackUtils$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 321
    return-void

    :cond_1
    move-object v0, p1

    .line 256
    goto/16 :goto_0

    .line 297
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 300
    :cond_3
    invoke-static {p0}, Lcom/google/android/gms/googlehelp/GoogleHelp;->getScreenshot(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2
.end method

.method private static logSettings(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 458
    sget-object v0, Lcom/google/android/calendar/timely/GoogleFeedbackUtils;->TAG:Ljava/lang/String;

    const-string v1, "Menu option \'Send feedback\' selected.  Dumping general SharedPreferences..."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 460
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/timely/GoogleFeedbackUtils;->logSharedPrefs(Landroid/content/SharedPreferences;)V

    .line 462
    sget-object v0, Lcom/google/android/calendar/timely/GoogleFeedbackUtils;->TAG:Ljava/lang/String;

    const-string v1, "Dumping calendar_alerts SharedPreferences..."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 463
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertUtils;->getFiredAlertsTable(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/timely/GoogleFeedbackUtils;->logSharedPrefs(Landroid/content/SharedPreferences;)V

    .line 465
    sget-object v0, Lcom/google/android/calendar/timely/GoogleFeedbackUtils;->TAG:Ljava/lang/String;

    const-string v1, "Device tz: %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/calendar/time/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 466
    sget-object v0, Lcom/google/android/calendar/timely/GoogleFeedbackUtils;->TAG:Ljava/lang/String;

    const-string v1, "Displayed tz: %s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 467
    sget-object v0, Lcom/google/android/calendar/timely/GoogleFeedbackUtils;->TAG:Ljava/lang/String;

    const-string v1, "Dump complete"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 468
    return-void
.end method

.method private static logSharedPrefs(Landroid/content/SharedPreferences;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 471
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 472
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 473
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 474
    if-nez v0, :cond_1

    .line 475
    sget-object v0, Lcom/google/android/calendar/timely/GoogleFeedbackUtils;->TAG:Ljava/lang/String;

    const-string v3, "%s: <null>"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 476
    :cond_1
    sget-object v3, Lcom/google/android/calendar/timely/GoogleFeedbackUtils;->UNLOGGED_PREFS:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 477
    sget-object v3, Lcom/google/android/calendar/timely/GoogleFeedbackUtils;->TAG:Ljava/lang/String;

    const-string v4, "%s: %s (%s)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    aput-object v0, v5, v7

    const/4 v2, 0x2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 480
    :cond_2
    return-void
.end method
