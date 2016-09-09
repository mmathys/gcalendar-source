.class public Lcom/google/android/calendar/event/segment/CustomActionSegment;
.super Lcom/android/calendar/event/segment/ClickableSegment;
.source "CustomActionSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/event/segment/CustomActionSegment$CustomActionSegmentProvider;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAction:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/google/android/calendar/event/segment/CustomActionSegment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/calendar/event/segment/CustomActionSegment;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 55
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/calendar/event/segment/CustomActionSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/event/segment/CustomActionSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/segment/ClickableSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public static addSegment(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Callable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/calendar/event/segment/CustomActionSegment;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/calendar/event/segment/CustomActionSegment;"
        }
    .end annotation

    .prologue
    .line 125
    .line 126
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->segment_custom_action_styled:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/calendar/event/segment/CustomActionSegment;

    .line 128
    new-instance v0, Lcom/google/android/calendar/event/segment/CustomActionSegment$1;

    move-object v1, p4

    move v2, p3

    move-object v3, p5

    move-object v4, p2

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/calendar/event/segment/CustomActionSegment$1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/String;)V

    invoke-static {v6, v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setupOnModelUpdatedListener(Landroid/view/View;Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 155
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 156
    return-object v6
.end method


# virtual methods
.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/android/calendar/R$layout;->segment_custom_action:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 70
    sget v0, Lcom/android/calendar/R$id;->value:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/CustomActionSegment;->setOnMeasureView(I)V

    .line 71
    return-void
.end method

.method public onRefreshModel()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/CustomActionSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/google/android/calendar/event/segment/CustomActionSegment$CustomActionSegmentProvider;

    .line 77
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/CustomActionSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 78
    sget-boolean v2, Lcom/google/android/calendar/event/segment/CustomActionSegment;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 79
    :cond_0
    sget v1, Lcom/android/calendar/R$id;->value:I

    invoke-interface {v0}, Lcom/google/android/calendar/event/segment/CustomActionSegment$CustomActionSegmentProvider;->getDisplayText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/calendar/event/segment/CustomActionSegment;->showText(ILjava/lang/CharSequence;)V

    .line 81
    sget v1, Lcom/android/calendar/R$id;->icon:I

    invoke-virtual {p0, v1}, Lcom/google/android/calendar/event/segment/CustomActionSegment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 82
    invoke-interface {v0}, Lcom/google/android/calendar/event/segment/CustomActionSegment$CustomActionSegmentProvider;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    invoke-interface {v0}, Lcom/google/android/calendar/event/segment/CustomActionSegment$CustomActionSegmentProvider;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 85
    invoke-interface {v0}, Lcom/google/android/calendar/event/segment/CustomActionSegment$CustomActionSegmentProvider;->getAnalyticsAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/calendar/event/segment/CustomActionSegment;->mAnalyticsAction:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/CustomActionSegment;->show()V

    .line 89
    invoke-interface {v0}, Lcom/google/android/calendar/event/segment/CustomActionSegment$CustomActionSegmentProvider;->getAction()Ljava/util/concurrent/Callable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/segment/CustomActionSegment;->mAction:Ljava/util/concurrent/Callable;

    .line 90
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/CustomActionSegment;->mAction:Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/CustomActionSegment;->enableAction(Z)V

    .line 91
    return-void

    .line 90
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected startAction()V
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/CustomActionSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/CustomActionSegment;->mAction:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/CustomActionSegment;->hide()V

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/CustomActionSegment;->hide()V

    goto :goto_0
.end method
