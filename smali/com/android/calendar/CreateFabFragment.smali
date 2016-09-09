.class public abstract Lcom/android/calendar/CreateFabFragment;
.super Lcom/android/calendar/OverlayFragment;
.source "CreateFabFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/CreateFabFragment$CreateFabStack;,
        Lcom/android/calendar/CreateFabFragment$CreateFabInterface;
    }
.end annotation


# instance fields
.field private mCreateFab:Landroid/view/View;

.field private final mCreateFabId:I

.field private mInterfaceActivity:Landroid/app/Activity;

.field private mOverlayView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/android/calendar/OverlayFragment;-><init>()V

    .line 383
    sget v0, Lcom/android/calendar/R$id;->floating_action_button:I

    iput v0, p0, Lcom/android/calendar/CreateFabFragment;->mCreateFabId:I

    .line 384
    return-void
.end method

.method static synthetic access$202(Lcom/android/calendar/CreateFabFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/calendar/CreateFabFragment;->mCreateFab:Landroid/view/View;

    return-object p1
.end method


# virtual methods
.method protected getFrameId()I
    .locals 1

    .prologue
    .line 407
    sget v0, Lcom/android/calendar/R$layout;->create_fab_frame:I

    return v0
.end method

.method protected final getInterface()Lcom/android/calendar/CreateFabFragment$CreateFabInterface;
    .locals 1

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/android/calendar/CreateFabFragment;->getInterfaceActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CreateFabFragment$CreateFabInterface;

    return-object v0
.end method

.method protected getInterfaceActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/calendar/CreateFabFragment;->mInterfaceActivity:Landroid/app/Activity;

    return-object v0
.end method

.method protected getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/android/calendar/CreateFabFragment;->getInterfaceActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method protected getOverlayView()Landroid/view/View;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/calendar/CreateFabFragment;->mOverlayView:Landroid/view/View;

    return-object v0
.end method

.method protected abstract getStartDayInterface()Lcom/android/calendar/CreateFabFragment$CreateFabStack$StartDay;
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 299
    invoke-super {p0, p1}, Lcom/android/calendar/OverlayFragment;->onAttach(Landroid/app/Activity;)V

    .line 300
    instance-of v0, p1, Lcom/android/calendar/CreateFabFragment$CreateFabInterface;

    if-eqz v0, :cond_0

    .line 301
    iput-object p1, p0, Lcom/android/calendar/CreateFabFragment;->mInterfaceActivity:Landroid/app/Activity;

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_0
    sget-object v0, Lcom/android/calendar/CreateFabFragment;->TAG:Ljava/lang/String;

    const-string v1, "Further use of CreateFabFragment will fail"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public onCreateFabFrame(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 393
    invoke-virtual {p0}, Lcom/android/calendar/CreateFabFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 395
    invoke-virtual {p0}, Lcom/android/calendar/CreateFabFragment;->getFrameId()I

    move-result v0

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 398
    invoke-virtual {v1, p2, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/CreateFabFragment;->mOverlayView:Landroid/view/View;

    .line 399
    iget-object v1, p0, Lcom/android/calendar/CreateFabFragment;->mOverlayView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/android/calendar/CreateFabFragment;->mOverlayView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 403
    :cond_0
    return-object v0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 309
    invoke-super {p0}, Lcom/android/calendar/OverlayFragment;->onDetach()V

    .line 310
    iget-object v0, p0, Lcom/android/calendar/CreateFabFragment;->mCreateFab:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/android/calendar/CreateFabFragment;->getInterface()Lcom/android/calendar/CreateFabFragment$CreateFabInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/CreateFabFragment$CreateFabInterface;->getCreateFabStack()Lcom/android/calendar/CreateFabFragment$CreateFabStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/CreateFabFragment$CreateFabStack;->pop()V

    .line 312
    iput-object v1, p0, Lcom/android/calendar/CreateFabFragment;->mCreateFab:Landroid/view/View;

    .line 314
    :cond_0
    iput-object v1, p0, Lcom/android/calendar/CreateFabFragment;->mInterfaceActivity:Landroid/app/Activity;

    .line 315
    return-void
.end method

.method public onDialogBackPressed()V
    .locals 4

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/calendar/CreateFabFragment;->mCreateFab:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/CreateFabFragment;->getInterface()Lcom/android/calendar/CreateFabFragment$CreateFabInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/android/calendar/CreateFabFragment;->getInterface()Lcom/android/calendar/CreateFabFragment$CreateFabInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/CreateFabFragment$CreateFabInterface;->getCreateFabStack()Lcom/android/calendar/CreateFabFragment$CreateFabStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/CreateFabFragment$CreateFabStack;->getSpeedDial()Lcom/android/calendar/SpeedDialLayout;

    move-result-object v0

    .line 325
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/calendar/SpeedDialLayout;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/SpeedDialLayout;->hide(J)V

    .line 336
    :goto_0
    return-void

    .line 330
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/CreateFabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 331
    instance-of v1, v0, Lcom/android/calendar/OverlayFragment$OverlayListener;

    if-eqz v1, :cond_1

    .line 332
    check-cast v0, Lcom/android/calendar/OverlayFragment$OverlayListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/calendar/OverlayFragment$OverlayListener;->dismissOverlay(Lcom/android/calendar/OverlayFragment;Z)V

    goto :goto_0

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/CreateFabFragment;->dismiss()V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 344
    invoke-super {p0, p1, p2}, Lcom/android/calendar/OverlayFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 346
    iget v0, p0, Lcom/android/calendar/CreateFabFragment;->mCreateFabId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_0

    .line 348
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 350
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 351
    if-eqz v1, :cond_0

    .line 352
    new-instance v2, Lcom/android/calendar/CreateFabFragment$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/calendar/CreateFabFragment$1;-><init>(Lcom/android/calendar/CreateFabFragment;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 367
    :cond_0
    return-void
.end method
