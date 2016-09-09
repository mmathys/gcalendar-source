.class public Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;
.super Ljava/lang/Object;
.source "WidgetRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/WidgetRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetViewContext"
.end annotation


# instance fields
.field private final mBirthdayColor:I

.field public final mContext:Landroid/content/Context;

.field public final mDarkDayColor:I

.field public final mDarkTextColor:I

.field private final mDeclinedEvent:Ljava/lang/String;

.field private final mDoneGroovePrefix:Ljava/lang/String;

.field public final mFirstDayColor:I

.field private final mGroovePrefix:Ljava/lang/String;

.field public final mLightDayColor:I

.field private final mNoMoreEventsToday:Ljava/lang/String;

.field private final mReminderPrefix:Ljava/lang/String;

.field public final mResources:Landroid/content/res/Resources;

.field private final mTimeLocation:Ljava/lang/String;

.field public final mWhiteTextColor:I

.field public final mWidgetStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 81
    iput-object p1, p0, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mContext:Landroid/content/Context;

    .line 82
    iput p2, p0, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mWidgetStyle:I

    .line 83
    sget v1, Lcom/android/calendar/R$color;->widget_text_chip_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mWhiteTextColor:I

    .line 84
    sget v1, Lcom/android/calendar/R$color;->widget_text_chip_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mDarkTextColor:I

    .line 85
    sget v1, Lcom/android/calendar/R$color;->widget_text_day_first:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mFirstDayColor:I

    .line 86
    sget v1, Lcom/android/calendar/R$color;->widget_text_day_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mLightDayColor:I

    .line 87
    sget v1, Lcom/android/calendar/R$color;->widget_text_day_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mDarkDayColor:I

    .line 88
    sget v1, Lcom/android/calendar/R$string;->timely_chip_time_location:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mTimeLocation:Ljava/lang/String;

    .line 89
    sget v1, Lcom/android/calendar/R$string;->no_more_events_today:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mNoMoreEventsToday:Ljava/lang/String;

    .line 90
    sget v1, Lcom/android/calendar/R$string;->accessibility_declined_event_prefix:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mDeclinedEvent:Ljava/lang/String;

    .line 91
    sget v1, Lcom/android/calendar/R$string;->reminder_description_prefix:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mReminderPrefix:Ljava/lang/String;

    .line 92
    sget v1, Lcom/android/calendar/R$string;->groove_description_prefix:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mGroovePrefix:Ljava/lang/String;

    .line 93
    sget v1, Lcom/android/calendar/R$string;->groove_done_description_prefix:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mDoneGroovePrefix:Ljava/lang/String;

    .line 94
    const-string v1, "preferences_birthdays_color"

    const v2, -0x6d1e40

    invoke-static {p1, v1, v2}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mBirthdayColor:I

    .line 97
    iput-object v0, p0, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mResources:Landroid/content/res/Resources;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mNoMoreEventsToday:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mReminderPrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mDoneGroovePrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mGroovePrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mDeclinedEvent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mTimeLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mBirthdayColor:I

    return v0
.end method


# virtual methods
.method isNarrowStyle()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 101
    iget v1, p0, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mWidgetStyle:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
