.class public Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;
.super Landroid/widget/TextView;
.source "FormattedTimeOfDayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$FormattedTime;,
        Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$HomeTime;,
        Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAnnotateLocationTimezone:Ljava/lang/String;

.field protected mDateFormat:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 192
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 200
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 189
    invoke-static {}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;->values()[Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->mDateFormat:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;

    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->parseFormattedTimeOfDayAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 202
    return-void
.end method

.method private mapDateFormatType(I)V
    .locals 4

    .prologue
    .line 247
    :try_start_0
    invoke-static {}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;->values()[Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;

    move-result-object v0

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->mDateFormat:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    const-string v1, "FormattedTimeOfDayView"

    const-string v2, "Converting FormattedTimeOfDaySegment_date_format"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->mAnnotateLocationTimezone:Ljava/lang/String;

    return-object v0
.end method

.method public parseFormattedTimeOfDayAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 212
    sget-object v0, Lcom/android/calendar/R$styleable;->FormattedTimeOfDay:[I

    .line 213
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 214
    invoke-virtual {p0}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 216
    sget-boolean v0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 217
    :cond_0
    sget v0, Lcom/android/calendar/R$string;->location_time:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->mAnnotateLocationTimezone:Ljava/lang/String;

    .line 218
    if-eqz v2, :cond_5

    .line 219
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    move v0, v1

    .line 220
    :goto_0
    if-ge v0, v4, :cond_4

    .line 221
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 222
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 223
    sget v7, Lcom/android/calendar/R$styleable;->FormattedTimeOfDay_date_format:I

    if-ne v5, v7, :cond_2

    .line 224
    invoke-virtual {v2, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 225
    invoke-direct {p0, v5}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->mapDateFormatType(I)V

    .line 220
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_2
    sget v7, Lcom/android/calendar/R$styleable;->FormattedTimeOfDay_annotate_location_timezone:I

    if-ne v5, v7, :cond_1

    .line 228
    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 229
    const/4 v5, 0x3

    iget v7, v6, Landroid/util/TypedValue;->type:I

    if-ne v5, v7, :cond_3

    iget-object v5, v6, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v5, :cond_3

    .line 231
    iget-object v5, v6, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->mAnnotateLocationTimezone:Ljava/lang/String;

    goto :goto_1

    .line 232
    :cond_3
    const/4 v5, 0x1

    iget v7, v6, Landroid/util/TypedValue;->type:I

    if-ne v5, v7, :cond_1

    .line 233
    iget v5, v6, Landroid/util/TypedValue;->resourceId:I

    .line 234
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->mAnnotateLocationTimezone:Ljava/lang/String;

    goto :goto_1

    .line 241
    :cond_4
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 243
    :cond_5
    return-void
.end method

.method public setTime(Lcom/google/api/services/calendar/model/Time;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 254
    new-instance v2, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$FormattedTime;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, p0, v1, p1}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$FormattedTime;-><init>(Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;Landroid/content/Context;Lcom/google/api/services/calendar/model/Time;)V

    .line 257
    iget-boolean v1, v2, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$FormattedTime;->mIsHomeTime:Z

    if-eqz v1, :cond_0

    .line 258
    iget-object v0, v2, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$FormattedTime;->mFormattedTime:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->showValue(Ljava/lang/String;)V

    .line 265
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v1, v0

    .line 262
    :goto_1
    if-eqz v1, :cond_1

    iget-object v3, v2, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$FormattedTime;->mFormattedTime:Ljava/lang/String;

    if-nez v3, :cond_3

    :cond_1
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->showValue(Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_1

    .line 263
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->getFormat()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v2, v2, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$FormattedTime;->mFormattedTime:Ljava/lang/String;

    aput-object v2, v3, v4

    invoke-static {v1, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method protected showValue(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 271
    if-nez p1, :cond_0

    const-string v0, ""

    .line 272
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 273
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->setVisibility(I)V

    .line 278
    :goto_1
    return-void

    .line 271
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 275
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->setVisibility(I)V

    goto :goto_1
.end method
