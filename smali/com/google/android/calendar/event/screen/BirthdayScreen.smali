.class public Lcom/google/android/calendar/event/screen/BirthdayScreen;
.super Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;
.source "BirthdayScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/event/screen/BirthdayScreen$BirthdayImageView;
    }
.end annotation


# instance fields
.field private mTimelineBirthday:Lcom/android/calendar/timely/TimelineBirthday;


# direct methods
.method public constructor <init>(Lcom/android/calendar/timely/TimelineBirthday;)V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;-><init>(I)V

    .line 84
    iput-object p1, p0, Lcom/google/android/calendar/event/screen/BirthdayScreen;->mTimelineBirthday:Lcom/android/calendar/timely/TimelineBirthday;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/event/screen/BirthdayScreen;)Lcom/android/calendar/timely/TimelineBirthday;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/BirthdayScreen;->mTimelineBirthday:Lcom/android/calendar/timely/TimelineBirthday;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/calendar/event/screen/BirthdayScreen;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/BirthdayScreen;->mEventHeader:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/calendar/event/screen/BirthdayScreen;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/BirthdayScreen;->mEventHeader:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/calendar/event/screen/BirthdayScreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/screen/BirthdayScreen;->setHeadlineTitle(Ljava/lang/String;)V

    return-void
.end method

.method public static shouldHaveImage(Landroid/content/res/Resources;Lcom/android/calendar/timely/TimelineItem;)Z
    .locals 1

    .prologue
    .line 185
    instance-of v0, p1, Lcom/android/calendar/timely/TimelineBirthday;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/calendar/event/ImageHelper;->shouldHaveImage(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onInflateCommandBar(Lcom/android/calendar/event/EventInfoFragment$CommandBar;)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public onInflateHeader(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/event/ImageHelper;->shouldHaveImage(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    sget v0, Lcom/android/calendar/R$layout;->headline_birthday:I

    .line 99
    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/calendar/event/screen/BirthdayScreen;->mEventHeader:Landroid/view/ViewGroup;

    .line 100
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/BirthdayScreen;->mEventHeader:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/BirthdayScreen;->mEventHeader:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 102
    new-instance v0, Lcom/google/android/calendar/event/screen/BirthdayScreen$BirthdayImageView;

    iget-object v1, p0, Lcom/google/android/calendar/event/screen/BirthdayScreen;->mEventHeader:Landroid/view/ViewGroup;

    .line 103
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/calendar/event/screen/BirthdayScreen$BirthdayImageView;-><init>(Landroid/content/Context;)V

    .line 104
    iget-object v1, p0, Lcom/google/android/calendar/event/screen/BirthdayScreen;->mEventHeader:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/BirthdayScreen;->mEventHeader:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 108
    invoke-super {p0, p1, p2}, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->onInflateHeader(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 110
    :cond_1
    return-void
.end method

.method public onInflateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 2

    .prologue
    .line 114
    sget v0, Lcom/android/calendar/R$layout;->screen_birthday:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 116
    sget v0, Lcom/android/calendar/R$id;->birthdays:I

    new-instance v1, Lcom/google/android/calendar/event/screen/BirthdayScreen$1;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/event/screen/BirthdayScreen$1;-><init>(Lcom/google/android/calendar/event/screen/BirthdayScreen;)V

    invoke-static {p1, v0, v1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setupOnModelUpdatedListener(Landroid/view/View;ILcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 124
    return-void
.end method

.method public onRefreshModel(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/calendar/timely/TimelineBirthday;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/timely/TimelineBirthday;

    iput-object v0, p0, Lcom/google/android/calendar/event/screen/BirthdayScreen;->mTimelineBirthday:Lcom/android/calendar/timely/TimelineBirthday;

    .line 134
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/BirthdayScreen;->mTimelineBirthday:Lcom/android/calendar/timely/TimelineBirthday;

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/screen/BirthdayScreen;->setItem(Lcom/android/calendar/timely/TimelineItem;)V

    .line 136
    :cond_0
    invoke-super {p0, p1}, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->onRefreshModel(Lcom/android/calendar/event/CalendarEventModel;)V

    .line 137
    return-void
.end method

.method protected updateHeadline()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/google/android/calendar/event/screen/BirthdayScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/google/android/calendar/event/screen/BirthdayScreen;->mTimelineBirthday:Lcom/android/calendar/timely/TimelineBirthday;

    .line 148
    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelineBirthday;->getStartMillis()J

    move-result-wide v2

    invoke-static {v0, v7}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-static {v7, v2, v3, v1}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Lcom/android/calendar/time/Time;JLjava/lang/String;)J

    move-result-wide v2

    .line 151
    new-instance v1, Ljava/util/Formatter;

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x32

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 152
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    const/16 v6, 0x18

    .line 153
    invoke-static {v0, v7}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v7

    move-wide v4, v2

    .line 151
    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Lcom/google/android/calendar/event/screen/BirthdayScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->birthdays_on:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/calendar/event/screen/BirthdayScreen;->setHeadlineTitle(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/google/android/calendar/event/screen/BirthdayScreen;->mEventHeader:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 158
    if-eqz v1, :cond_0

    .line 159
    new-instance v2, Lcom/google/android/calendar/event/screen/BirthdayScreen$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/calendar/event/screen/BirthdayScreen$2;-><init>(Lcom/google/android/calendar/event/screen/BirthdayScreen;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 179
    :cond_0
    return-void
.end method
