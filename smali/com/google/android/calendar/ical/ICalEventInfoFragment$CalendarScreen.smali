.class public Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen;
.super Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;
.source "ICalEventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/ical/ICalEventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CalendarScreen"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/ical/ICalEventInfoFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/calendar/ical/ICalEventInfoFragment;Lcom/android/calendar/timely/TimelineItem;)V
    .locals 1

    .prologue
    .line 224
    iput-object p1, p0, Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen;->this$0:Lcom/google/android/calendar/ical/ICalEventInfoFragment;

    .line 225
    sget v0, Lcom/android/calendar/R$layout;->event_info_timely_body:I

    invoke-direct {p0, v0, p2}, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;-><init>(ILcom/android/calendar/timely/TimelineItem;)V

    .line 226
    return-void
.end method


# virtual methods
.method public onInflateCommandBar(Lcom/android/calendar/event/EventInfoFragment$CommandBar;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 257
    sget v0, Lcom/android/calendar/R$layout;->import_or_update_action:I

    invoke-virtual {p1, v0}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->inflateCommand(I)V

    .line 258
    sget v0, Lcom/android/calendar/R$id;->import_or_update_action_prompt:I

    .line 259
    invoke-virtual {p1, v0}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 260
    new-instance v1, Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen$2;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen$2;-><init>(Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v1, p0, Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen;->this$0:Lcom/google/android/calendar/ical/ICalEventInfoFragment;

    # getter for: Lcom/google/android/calendar/ical/ICalEventInfoFragment;->mEventType:I
    invoke-static {v1}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->access$500(Lcom/google/android/calendar/ical/ICalEventInfoFragment;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 282
    :pswitch_0
    # getter for: Lcom/google/android/calendar/ical/ICalEventInfoFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unhandled event type: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen;->this$0:Lcom/google/android/calendar/ical/ICalEventInfoFragment;

    # getter for: Lcom/google/android/calendar/ical/ICalEventInfoFragment;->mEventType:I
    invoke-static {v3}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->access$500(Lcom/google/android/calendar/ical/ICalEventInfoFragment;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 285
    :goto_0
    return-void

    .line 268
    :pswitch_1
    sget v1, Lcom/android/calendar/R$string;->import_event_action_prompt:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 272
    :pswitch_2
    sget v1, Lcom/android/calendar/R$string;->update_event_action_prompt:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 276
    :pswitch_3
    sget v1, Lcom/android/calendar/R$string;->overwrite_event_action_prompt:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 279
    :pswitch_4
    sget v1, Lcom/android/calendar/R$string;->import_event_action_prompt:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onInflateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 2

    .prologue
    .line 230
    invoke-super {p0, p1, p2}, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->onInflateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 233
    sget v0, Lcom/android/calendar/R$id;->where:I

    new-instance v1, Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen$1;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen$1;-><init>(Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen;)V

    invoke-static {p1, v0, v1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setupOnModelUpdatedListener(Landroid/view/View;ILcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 252
    return-void
.end method
