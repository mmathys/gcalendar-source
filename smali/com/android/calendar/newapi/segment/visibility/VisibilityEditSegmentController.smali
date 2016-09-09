.class public Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;
.super Lcom/android/calendar/newapi/segment/common/SegmentController;
.source "VisibilityEditSegmentController.java"

# interfaces
.implements Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog$SingleChoiceDialogListener;
.implements Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegment$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/segment/common/SegmentController;",
        "Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog$SingleChoiceDialogListener",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegment$Listener;"
    }
.end annotation


# instance fields
.field private mLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegment;

.field private mVisibilityModification:Lcom/android/calendar/newapi/model/VisibilityModification;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/common/SegmentController;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegment;Lcom/android/calendar/newapi/model/VisibilityModification;)Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;
    .locals 2

    .prologue
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;

    .line 45
    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;

    invoke-direct {v0}, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;-><init>()V

    .line 47
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 49
    :cond_0
    invoke-direct {v0, p2}, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;->setView(Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegment;)V

    .line 50
    invoke-direct {v0, p3}, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;->setData(Lcom/android/calendar/newapi/model/VisibilityModification;)V

    .line 51
    return-object v0
.end method

.method private getVisibility()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;->mVisibilityModification:Lcom/android/calendar/newapi/model/VisibilityModification;

    invoke-interface {v0}, Lcom/android/calendar/newapi/model/VisibilityModification;->getVisibility()I

    move-result v0

    return v0
.end method

.method public static newView(Landroid/view/LayoutInflater;)Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegment;
    .locals 2

    .prologue
    .line 35
    sget v0, Lcom/android/calendar/R$layout;->newapi_visibility_edit_segment:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegment;

    return-object v0
.end method

.method private setData(Lcom/android/calendar/newapi/model/VisibilityModification;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;->mVisibilityModification:Lcom/android/calendar/newapi/model/VisibilityModification;

    .line 61
    return-void
.end method

.method private setView(Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegment;)V
    .locals 1

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegment;

    .line 56
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegment;

    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegment;->setListener(Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method private updateVisibility()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegment;

    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;->getVisibility()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;->visibilityToLabel(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegment;->setText(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method private visibilityToIndex(I)I
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;->mValues:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private visibilityToLabel(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;->mLabels:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;->visibilityToIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onDialogItemChosen(Ljava/lang/Integer;I)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;->mVisibilityModification:Lcom/android/calendar/newapi/model/VisibilityModification;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/calendar/newapi/model/VisibilityModification;->setVisibility(I)V

    .line 93
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;->updateVisibility()V

    .line 94
    return-void
.end method

.method public bridge synthetic onDialogItemChosen(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;->onDialogItemChosen(Ljava/lang/Integer;I)V

    return-void
.end method

.method protected onInitialize()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$array;->visibility_labels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    aget-object v3, v0, v4

    aput-object v3, v2, v4

    aget-object v3, v0, v5

    aput-object v3, v2, v5

    aget-object v0, v0, v6

    aput-object v0, v2, v6

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;->mLabels:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;->mValues:Ljava/util/ArrayList;

    .line 72
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;->mValues:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;->mValues:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;->mValues:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;->updateVisibility()V

    .line 77
    return-void
.end method

.method public onVisibilityClicked()V
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;->mLabels:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;->mValues:Ljava/util/ArrayList;

    .line 84
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;->getVisibility()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;->visibilityToIndex(I)I

    move-result v2

    const/4 v3, -0x1

    .line 81
    invoke-static {v0, v1, v2, p0, v3}, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;->newIntegerBasedInstance(Ljava/util/ArrayList;Ljava/util/ArrayList;ILandroid/app/Fragment;I)Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SingleChoiceTextDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 88
    return-void
.end method
