.class public Lcom/android/calendar/event/segment/JoinByPhoneSegment;
.super Lcom/android/calendar/event/segment/ClickableSegment;
.source "JoinByPhoneSegment.java"

# interfaces
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/android/calendar/event/segment/JoinByPhoneSegment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/segment/JoinByPhoneSegment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/event/segment/ClickableSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/segment/ClickableSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 2

    .prologue
    .line 37
    sget v0, Lcom/android/calendar/R$layout;->segment_join_by_phone:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/JoinByPhoneSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->analytics_join_conference_by_phone:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/segment/JoinByPhoneSegment;->mAnalyticsAction:Ljava/lang/String;

    .line 41
    sget v0, Lcom/android/calendar/R$id;->detail:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/JoinByPhoneSegment;->setOnMeasureDetailView(I)V

    .line 42
    sget v0, Lcom/android/calendar/R$id;->value:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/JoinByPhoneSegment;->setOnMeasureView(I)V

    .line 43
    return-void
.end method

.method public onRefreshModel()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 47
    invoke-super {p0}, Lcom/android/calendar/event/segment/ClickableSegment;->onRefreshModel()V

    .line 49
    iget-object v0, p0, Lcom/android/calendar/event/segment/JoinByPhoneSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;

    invoke-interface {v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;->getModelData()Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel;->getPhoneNumberDetails()Lcom/android/calendar/event/PhoneNumberDetails;

    move-result-object v1

    .line 51
    iget-boolean v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mIncludeHangout:Z

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v1}, Lcom/android/calendar/event/PhoneNumberDetails;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/JoinByPhoneSegment;->hide()V

    .line 71
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-virtual {v1}, Lcom/android/calendar/event/PhoneNumberDetails;->getUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/segment/JoinByPhoneSegment;->mUri:Landroid/net/Uri;

    .line 59
    invoke-virtual {v1}, Lcom/android/calendar/event/PhoneNumberDetails;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {v1}, Lcom/android/calendar/event/PhoneNumberDetails;->getPassCode()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 64
    :goto_1
    sget v1, Lcom/android/calendar/R$id;->detail:I

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/event/segment/JoinByPhoneSegment;->setText(ILjava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/JoinByPhoneSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->join_by_phone_action_label:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    sget v1, Lcom/android/calendar/R$id;->value:I

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/event/segment/JoinByPhoneSegment;->setText(ILjava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p0, v6}, Lcom/android/calendar/event/segment/JoinByPhoneSegment;->enableAction(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/JoinByPhoneSegment;->show()V

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/JoinByPhoneSegment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->phone_number_with_pin_format:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected startAction()V
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/calendar/event/segment/JoinByPhoneSegment;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/calendar/AbstractCalendarActivity;

    if-nez v0, :cond_0

    .line 76
    sget-object v0, Lcom/android/calendar/event/segment/JoinByPhoneSegment;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/calendar/event/segment/JoinByPhoneSegment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Inappropriate type of host activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 86
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/segment/JoinByPhoneSegment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/calendar/AbstractCalendarActivity;

    .line 81
    invoke-static {}, Lcom/android/calendar/Utils;->isMOrLater()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/android/calendar/event/segment/JoinByPhoneSegment;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/calendar/AbstractCalendarActivity;->makeCall(Landroid/net/Uri;)V

    goto :goto_0

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/event/segment/JoinByPhoneSegment;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/calendar/AbstractCalendarActivity;->openDialer(Landroid/net/Uri;)V

    goto :goto_0
.end method
