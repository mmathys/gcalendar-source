.class public Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Lcom/android/calendar/event/EventInfoFragment$Screen;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CalendarScreen"
.end annotation


# instance fields
.field public mEventHeader:Landroid/view/ViewGroup;

.field protected mTitleView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/calendar/event/EventInfoFragment;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/EventInfoFragment;)V
    .locals 0

    .prologue
    .line 4097
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeader()Landroid/view/View;
    .locals 1

    .prologue
    .line 4238
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->mEventHeader:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 4255
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->mEventHeader:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 4256
    sget-object v0, Lcom/android/calendar/event/EventInfoFragment;->TAG:Ljava/lang/String;

    const-string v1, "Requested title view before onInflateHeader"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4257
    const/4 v0, 0x0

    .line 4262
    :goto_0
    return-object v0

    .line 4259
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->mTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 4260
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->mEventHeader:Landroid/view/ViewGroup;

    sget v1, Lcom/android/calendar/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->mTitleView:Landroid/widget/TextView;

    .line 4262
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->mTitleView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public getTitleViewId()I
    .locals 1

    .prologue
    .line 4267
    sget v0, Lcom/android/calendar/R$id;->title:I

    return v0
.end method

.method public onInflateCommandBar(Lcom/android/calendar/event/EventInfoFragment$CommandBar;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 4125
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v0, v0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-static {v0}, Lcom/android/calendar/event/EditHelper;->canRespond(Lcom/android/calendar/event/CalendarEventModel;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 4127
    sget v0, Lcom/android/calendar/R$layout;->event_info_response_action:I

    invoke-virtual {p1, v0}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->inflateCommand(I)V

    .line 4130
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 4131
    if-eqz v4, :cond_0

    .line 4132
    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mResponseIds:[I
    invoke-static {}, Lcom/android/calendar/event/EventInfoFragment;->access$4600()[I

    move-result-object v2

    array-length v5, v2

    move v1, v3

    :goto_0
    if-ge v1, v5, :cond_0

    aget v0, v2, v1

    .line 4133
    invoke-virtual {p1, v0}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4134
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4132
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 4138
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {p1}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->getCommandsGroup()Landroid/view/ViewGroup;

    move-result-object v1

    # setter for: Lcom/android/calendar/event/EventInfoFragment;->mResponseBarView:Landroid/view/ViewGroup;
    invoke-static {v0, v1}, Lcom/android/calendar/event/EventInfoFragment;->access$1902(Lcom/android/calendar/event/EventInfoFragment;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 4139
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment;->getCurrentResponse()I

    move-result v5

    .line 4140
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # invokes: Lcom/android/calendar/event/EventInfoFragment;->updateResponseId(I)V
    invoke-static {v0, v5}, Lcom/android/calendar/event/EventInfoFragment;->access$1700(Lcom/android/calendar/event/EventInfoFragment;I)V

    .line 4141
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mResponseBarView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/calendar/event/EventInfoFragment;->access$1900(Lcom/android/calendar/event/EventInfoFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    # invokes: Lcom/android/calendar/event/EventInfoFragment;->updateResponseButtons(Landroid/view/ViewGroup;)V
    invoke-static {v0, v1}, Lcom/android/calendar/event/EventInfoFragment;->access$2000(Lcom/android/calendar/event/EventInfoFragment;Landroid/view/ViewGroup;)V

    .line 4143
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-boolean v0, v0, Lcom/android/calendar/event/EventInfoFragment;->mIsProposeTimeSupported:Z

    if-eqz v0, :cond_4

    .line 4144
    sget v0, Lcom/android/calendar/R$id;->response_hint:I

    invoke-virtual {p1, v0}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4146
    new-instance v1, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen$1;-><init>(Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4163
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    sget v2, Lcom/android/calendar/R$id;->response_follow_up_propose_new_time:I

    .line 4164
    invoke-virtual {p1, v2}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 4163
    # setter for: Lcom/android/calendar/event/EventInfoFragment;->mProposeTimeButton:Landroid/view/View;
    invoke-static {v1, v2}, Lcom/android/calendar/event/EventInfoFragment;->access$4702(Lcom/android/calendar/event/EventInfoFragment;Landroid/view/View;)Landroid/view/View;

    .line 4165
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mProposeTimeButton:Landroid/view/View;
    invoke-static {v1}, Lcom/android/calendar/event/EventInfoFragment;->access$4700(Lcom/android/calendar/event/EventInfoFragment;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen$2;

    invoke-direct {v2, p0}, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen$2;-><init>(Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4203
    if-eqz v4, :cond_3

    .line 4204
    const/4 v1, 0x3

    new-array v6, v1, [Landroid/view/View;

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    .line 4205
    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mProposeTimeButton:Landroid/view/View;
    invoke-static {v1}, Lcom/android/calendar/event/EventInfoFragment;->access$4700(Lcom/android/calendar/event/EventInfoFragment;)Landroid/view/View;

    move-result-object v1

    aput-object v1, v6, v3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mAddNoteButton:Landroid/view/View;
    invoke-static {v2}, Lcom/android/calendar/event/EventInfoFragment;->access$4800(Lcom/android/calendar/event/EventInfoFragment;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mMoreOptionsButton:Landroid/view/View;
    invoke-static {v2}, Lcom/android/calendar/event/EventInfoFragment;->access$4900(Lcom/android/calendar/event/EventInfoFragment;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v6, v1

    .line 4204
    array-length v7, v6

    move v2, v3

    :goto_1
    if-ge v2, v7, :cond_2

    aget-object v1, v6, v2

    .line 4206
    if-eqz v1, :cond_1

    .line 4207
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4204
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 4210
    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4213
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mResponseBarView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/calendar/event/EventInfoFragment;->access$1900(Lcom/android/calendar/event/EventInfoFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    .line 4214
    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mIsResponseFollowUpShown:Ljava/lang/Boolean;
    invoke-static {v4}, Lcom/android/calendar/event/EventInfoFragment;->access$2300(Lcom/android/calendar/event/EventInfoFragment;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 4213
    # invokes: Lcom/android/calendar/event/EventInfoFragment;->setResponseFollowUpVisible(Landroid/view/ViewGroup;IZZ)V
    invoke-static {v0, v1, v5, v2, v3}, Lcom/android/calendar/event/EventInfoFragment;->access$2400(Lcom/android/calendar/event/EventInfoFragment;Landroid/view/ViewGroup;IZZ)V

    .line 4220
    :cond_4
    :goto_2
    return-void

    .line 4218
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/event/EventInfoFragment;->mResponseBarView:Landroid/view/ViewGroup;
    invoke-static {v0, v1}, Lcom/android/calendar/event/EventInfoFragment;->access$1902(Lcom/android/calendar/event/EventInfoFragment;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    goto :goto_2
.end method

.method public onInflateHeader(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4229
    sget v0, Lcom/android/calendar/R$layout;->event_info_headline:I

    .line 4230
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->mEventHeader:Landroid/view/ViewGroup;

    .line 4231
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->mEventHeader:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 4232
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->mEventHeader:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 4234
    :cond_0
    return-void
.end method

.method public onInflateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 2

    .prologue
    .line 4115
    sget v0, Lcom/android/calendar/R$layout;->event_info_body:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 4116
    return-void
.end method

.method public onRefreshModel(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 1

    .prologue
    .line 4248
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->refreshHeader(Lcom/android/calendar/event/CalendarEventModel;)V

    .line 4249
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->updateHeadline(Lcom/android/calendar/event/CalendarEventModel;)V

    .line 4250
    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel;->getEventColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->updateEventColor(I)V

    .line 4251
    return-void
.end method

.method protected refreshHeader(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 4

    .prologue
    .line 4275
    new-instance v0, Lcom/android/calendar/event/EventInfoFragment$CommandBar;

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v2, v2, Lcom/android/calendar/event/EventInfoFragment;->mEventInfoView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EventInfoFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;-><init>(Lcom/android/calendar/event/EventInfoFragment;Landroid/view/View;Landroid/view/LayoutInflater;)V

    .line 4276
    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->isEnabled()Z

    move-result v1

    .line 4277
    invoke-static {p1}, Lcom/android/calendar/event/EditHelper;->canRespond(Lcom/android/calendar/event/CalendarEventModel;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 4279
    if-eqz v1, :cond_1

    .line 4280
    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->disable()V

    .line 4284
    :goto_0
    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->finalizeCommandsGroup()V

    .line 4286
    :cond_0
    return-void

    .line 4282
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->onInflateCommandBar(Lcom/android/calendar/event/EventInfoFragment$CommandBar;)V

    goto :goto_0
.end method

.method public updateEventColor(I)V
    .locals 1

    .prologue
    .line 4324
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->mEventHeader:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 4325
    return-void
.end method

.method public updateHeadline(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 6

    .prologue
    .line 4293
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v0, v0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, v0, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 4294
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->getTitleView()Landroid/widget/TextView;

    move-result-object v2

    .line 4295
    invoke-virtual {v2}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 4296
    if-eqz v0, :cond_0

    .line 4297
    new-instance v3, Lcom/android/calendar/event/EventInfoFragment$TitleOnGlobalLayoutListener;

    invoke-direct {v3, v2}, Lcom/android/calendar/event/EventInfoFragment$TitleOnGlobalLayoutListener;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4299
    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4300
    invoke-static {p1}, Lcom/android/calendar/event/EditHelper;->canRespond(Lcom/android/calendar/event/CalendarEventModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4302
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment;->getCurrentResponse()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4313
    :pswitch_0
    sget v0, Lcom/android/calendar/R$string;->describe_invitation_none:I

    .line 4316
    :goto_0
    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v3}, Lcom/android/calendar/event/EventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v3, v0, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4320
    :goto_1
    return-void

    .line 4304
    :pswitch_1
    sget v0, Lcom/android/calendar/R$string;->describe_invitation_accepted:I

    goto :goto_0

    .line 4307
    :pswitch_2
    sget v0, Lcom/android/calendar/R$string;->describe_invitation_declined:I

    goto :goto_0

    .line 4310
    :pswitch_3
    sget v0, Lcom/android/calendar/R$string;->describe_invitation_tentative:I

    goto :goto_0

    .line 4318
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 4302
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
