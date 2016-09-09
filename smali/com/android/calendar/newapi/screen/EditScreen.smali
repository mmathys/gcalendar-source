.class public Lcom/android/calendar/newapi/screen/EditScreen;
.super Landroid/widget/FrameLayout;
.source "EditScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/newapi/screen/EditScreen$Listener;
    }
.end annotation


# instance fields
.field private final mCancelButton:Landroid/view/View;

.field private mListener:Lcom/android/calendar/newapi/screen/EditScreen$Listener;

.field private final mSaveButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 48
    sget v0, Lcom/android/calendar/R$layout;->newapi_edit_screen:I

    invoke-static {p1, v0, p0}, Lcom/android/calendar/newapi/screen/EditScreen;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/EditScreen;->setVisibility(I)V

    .line 53
    sget v0, Lcom/android/calendar/R$id;->save:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/EditScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/EditScreen;->mSaveButton:Landroid/view/View;

    .line 54
    sget v0, Lcom/android/calendar/R$id;->cancel:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/EditScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/EditScreen;->mCancelButton:Landroid/view/View;

    .line 55
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/EditScreen;->setupEventListeners()V

    .line 56
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/EditScreen;->applyTransparentStatusbar()V

    .line 57
    return-void
.end method

.method private applyTransparentStatusbar()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 74
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EditScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$bool;->show_event_edit_full_screen:I

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lcom/android/calendar/utils/SystemWindowInsetApplier;

    invoke-direct {v0}, Lcom/android/calendar/utils/SystemWindowInsetApplier;-><init>()V

    .line 80
    const/16 v1, 0x500

    invoke-virtual {p0, v1}, Lcom/android/calendar/newapi/screen/EditScreen;->setSystemUiVisibility(I)V

    .line 83
    iget-object v1, p0, Lcom/android/calendar/newapi/screen/EditScreen;->mSaveButton:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/utils/SystemWindowInsetApplier;->addView(Landroid/view/View;II)V

    .line 84
    iget-object v1, p0, Lcom/android/calendar/newapi/screen/EditScreen;->mCancelButton:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/utils/SystemWindowInsetApplier;->addView(Landroid/view/View;II)V

    .line 85
    sget v1, Lcom/android/calendar/R$id;->segments_scroll:I

    .line 86
    invoke-virtual {p0, v1}, Lcom/android/calendar/newapi/screen/EditScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    .line 85
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/utils/SystemWindowInsetApplier;->addView(Landroid/view/View;II)V

    .line 89
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 91
    :cond_0
    return-void
.end method

.method private placeBodySegmentViews(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    sget v0, Lcom/android/calendar/R$id;->segments:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/EditScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 112
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 113
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 112
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method

.method private placeHeaderSegmentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 104
    if-eqz p1, :cond_0

    .line 105
    sget v0, Lcom/android/calendar/R$id;->segment_container:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/EditScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 106
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    :cond_0
    return-void
.end method

.method private setupEventListeners()V
    .locals 5

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EditScreen;->mSaveButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EditScreen;->mCancelButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    sget v0, Lcom/android/calendar/R$id;->edit_screen_header:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/EditScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 65
    sget v0, Lcom/android/calendar/R$id;->segments_scroll:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/EditScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 66
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/android/calendar/newapi/screen/HeaderElevator;

    .line 67
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EditScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v1, v0}, Lcom/android/calendar/newapi/screen/HeaderElevator;-><init>(Landroid/content/res/Resources;Landroid/view/View;Landroid/widget/ScrollView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 69
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EditScreen;->mListener:Lcom/android/calendar/newapi/screen/EditScreen$Listener;

    if-eqz v0, :cond_0

    .line 124
    sget v0, Lcom/android/calendar/R$id;->save:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EditScreen;->mListener:Lcom/android/calendar/newapi/screen/EditScreen$Listener;

    invoke-interface {v0}, Lcom/android/calendar/newapi/screen/EditScreen$Listener;->onSaveClicked()V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    sget v0, Lcom/android/calendar/R$id;->cancel:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EditScreen;->mListener:Lcom/android/calendar/newapi/screen/EditScreen$Listener;

    invoke-interface {v0}, Lcom/android/calendar/newapi/screen/EditScreen$Listener;->onCancelClicked()V

    goto :goto_0
.end method

.method public setListener(Lcom/android/calendar/newapi/screen/EditScreen$Listener;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/calendar/newapi/screen/EditScreen;->mListener:Lcom/android/calendar/newapi/screen/EditScreen$Listener;

    .line 119
    return-void
.end method

.method public setSegmentViews(Lcom/android/calendar/newapi/screen/SegmentViews;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p1, Lcom/android/calendar/newapi/screen/SegmentViews;->headerView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/calendar/newapi/screen/EditScreen;->placeHeaderSegmentView(Landroid/view/View;)V

    .line 95
    iget-object v0, p1, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/calendar/newapi/screen/EditScreen;->placeBodySegmentViews(Ljava/util/ArrayList;)V

    .line 97
    invoke-virtual {p0, v1}, Lcom/android/calendar/newapi/screen/EditScreen;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EditScreen;->mSaveButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EditScreen;->mCancelButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 101
    return-void
.end method
