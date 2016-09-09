.class Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;
.super Landroid/os/AsyncTask;
.source "AnalyticsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AnalyticsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReportAppOpenAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field private final mIsTabletConfig:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 206
    const-class v0, Lcom/android/calendar/AnalyticsUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 212
    iput-object p1, p0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->mContext:Landroid/content/Context;

    .line 213
    iput-object p2, p0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->mIntent:Landroid/content/Intent;

    .line 214
    iput-boolean p3, p0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->mIsTabletConfig:Z

    .line 215
    return-void
.end method

.method private logCellHeightPreferences(Landroid/content/res/Resources;Lcom/android/calendar/AnalyticsLogger;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 314
    sget v0, Lcom/android/calendar/R$dimen;->grid_hour_height_default:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 316
    iget-object v1, p0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->mContext:Landroid/content/Context;

    const-string v2, "preferences_grid_hour_height_p"

    invoke-static {v1, v2, v0}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 318
    iget-object v2, p0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->mContext:Landroid/content/Context;

    const-string v3, "preferences_grid_hour_height_l"

    invoke-static {v2, v3, v0}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 321
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 322
    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 323
    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 325
    iget-object v2, p0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->mContext:Landroid/content/Context;

    const-string v3, "preferences"

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    const-string v6, "cell_height_portrait"

    move-object v1, p2

    invoke-interface/range {v1 .. v7}, Lcom/android/calendar/AnalyticsLogger;->trackTiming(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v2, p0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->mContext:Landroid/content/Context;

    const-string v3, "preferences"

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    const-string v6, "cell_height_landscape"

    move-object v1, p2

    invoke-interface/range {v1 .. v7}, Lcom/android/calendar/AnalyticsLogger;->trackTiming(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 329
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 206
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 219
    iget-object v0, p0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 220
    iget-object v0, p0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 221
    :goto_0
    if-eqz v0, :cond_1

    .line 222
    const-string v1, "intent_source"

    const-string v6, "unknown"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/calendar/AnalyticsUtils;->maybeLogInfrequentAnalytics(Landroid/content/Context;)V
    invoke-static {v1}, Lcom/android/calendar/AnalyticsUtils;->access$000(Landroid/content/Context;)V

    .line 228
    iget-object v1, p0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->mContext:Landroid/content/Context;

    const-string v6, "app_open"

    const-wide/32 v8, 0x5265c00

    invoke-static {v1, v6, v8, v9}, Lcom/android/calendar/AnalyticsUtils;->throttle(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 310
    :goto_2
    return-object v4

    :cond_0
    move-object v0, v4

    .line 220
    goto :goto_0

    .line 223
    :cond_1
    const-string v0, "unknown"

    goto :goto_1

    .line 232
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v6

    .line 234
    invoke-direct {p0, v5, v6}, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->logCellHeightPreferences(Landroid/content/res/Resources;Lcom/android/calendar/AnalyticsLogger;)V

    .line 241
    iget-object v1, p0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->mContext:Landroid/content/Context;

    iget-boolean v7, p0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->mIsTabletConfig:Z

    invoke-static {v1, v7}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getLastUsedView(Landroid/content/Context;Z)I

    move-result v1

    .line 243
    invoke-static {v1}, Lcom/android/calendar/AnalyticsUtils;->convertViewToAnalyticsViewMode(I)Ljava/lang/String;

    move-result-object v7

    .line 244
    if-eqz v7, :cond_3

    .line 245
    iget-object v8, p0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/calendar/R$integer;->analytics_view_mode_dimension:I

    .line 246
    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 245
    invoke-interface {v6, v8, v9, v7}, Lcom/android/calendar/AnalyticsLogger;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 252
    :cond_3
    iget-boolean v7, p0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->mIsTabletConfig:Z

    if-nez v7, :cond_4

    sget v7, Lcom/android/calendar/R$id;->month_view:I

    if-ne v1, v7, :cond_4

    .line 253
    iget-object v1, p0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->mContext:Landroid/content/Context;

    const-string v7, "preference_key_grid_mode"

    invoke-static {v1, v7, v3}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 255
    iget-object v7, p0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/calendar/R$integer;->analytics_view_mode_from_month_dimension:I

    .line 256
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    if-eqz v1, :cond_5

    .line 257
    const-string v1, "day"

    .line 255
    :goto_3
    invoke-interface {v6, v7, v8, v1}, Lcom/android/calendar/AnalyticsLogger;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 261
    :cond_4
    iget-object v1, p0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 262
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_6

    .line 263
    const-string v1, "portrait"

    .line 264
    :goto_4
    iget-object v7, p0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/calendar/R$integer;->analytics_device_orientation_dimension:I

    .line 265
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 264
    invoke-interface {v6, v7, v8, v1}, Lcom/android/calendar/AnalyticsLogger;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 269
    sget-boolean v7, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->$assertionsDisabled:Z

    if-nez v7, :cond_7

    if-nez v1, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 257
    :cond_5
    const-string v1, "schedule"

    goto :goto_3

    .line 263
    :cond_6
    const-string v1, "landscape"

    goto :goto_4

    .line 270
    :cond_7
    iget-object v7, p0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->mContext:Landroid/content/Context;

    .line 271
    invoke-static {v7}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v7

    .line 270
    invoke-virtual {v1, v7}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 272
    iget-object v7, p0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/calendar/R$integer;->analytics_num_installed_widgets_dimension:I

    .line 273
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    array-length v1, v1

    const/16 v9, 0xa

    .line 274
    invoke-static {v1, v9}, Lcom/android/calendar/AnalyticsUtils;->convertNumToDimensionValue(II)Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-interface {v6, v7, v8, v1}, Lcom/android/calendar/AnalyticsLogger;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 277
    iget-object v7, p0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/calendar/R$integer;->analytics_device_type_dimension:I

    .line 278
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iget-boolean v1, p0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->mIsTabletConfig:Z

    if-eqz v1, :cond_9

    .line 279
    const-string v1, "tablet"

    .line 277
    :goto_5
    invoke-interface {v6, v7, v8, v1}, Lcom/android/calendar/AnalyticsLogger;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 282
    iget-boolean v1, p0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->mIsTabletConfig:Z

    if-eqz v1, :cond_8

    .line 283
    iget-object v1, p0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/calendar/R$bool;->force_show_more_events:I

    .line 284
    invoke-static {v1, v7}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v1

    .line 287
    if-eqz v1, :cond_a

    .line 288
    const-string v1, "disabled"

    .line 297
    :goto_6
    iget-object v2, p0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/calendar/R$integer;->analytics_tablet_illustrations_shown_dimension:I

    .line 298
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 297
    invoke-interface {v6, v2, v3, v1}, Lcom/android/calendar/AnalyticsLogger;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 302
    :cond_8
    iget-object v1, p0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->mContext:Landroid/content/Context;

    invoke-interface {v6, v1}, Lcom/android/calendar/AnalyticsLogger;->setAdditionalDimensionsForApplicationOpenEvent(Landroid/content/Context;)V

    .line 305
    iget-object v1, p0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/calendar/R$string;->analytics_category_app_open_daily:I

    .line 306
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-interface {v6, v1, v2, v0}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->mContext:Landroid/content/Context;

    invoke-interface {v6, v0}, Lcom/android/calendar/AnalyticsLogger;->sendAdditionalEventsOnApplicationOpen(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 279
    :cond_9
    const-string v1, "phone"

    goto :goto_5

    .line 290
    :cond_a
    iget-object v1, p0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->mContext:Landroid/content/Context;

    const-string v7, "preference_showMoreEvents"

    .line 291
    invoke-static {v1, v7, v3}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_b

    move v1, v2

    .line 295
    :goto_7
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_b
    move v1, v3

    .line 291
    goto :goto_7
.end method
