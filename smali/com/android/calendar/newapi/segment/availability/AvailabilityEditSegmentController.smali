.class public Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegmentController;
.super Lcom/android/calendar/newapi/segment/common/SegmentController;
.source "AvailabilityEditSegmentController.java"

# interfaces
.implements Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegment$Listener;
.implements Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog$SingleChoiceDialogListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/segment/common/SegmentController;",
        "Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegment$Listener;",
        "Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog$SingleChoiceDialogListener",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mEventModifications:Lcom/google/android/calendar/api/EventModifications;

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

.field private mView:Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/common/SegmentController;-><init>()V

    return-void
.end method

.method private availabilityToIndex(I)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 106
    packed-switch p1, :pswitch_data_0

    .line 113
    :goto_0
    :pswitch_0
    return v0

    .line 110
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private availabilityToLabel(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegmentController;->mLabels:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegmentController;->availabilityToIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getAvailability()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/EventModifications;->getAvailability()I

    move-result v0

    return v0
.end method

.method public static getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegment;Lcom/google/android/calendar/api/EventModifications;)Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegmentController;
    .locals 2

    .prologue
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegmentController;

    .line 47
    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegmentController;

    invoke-direct {v0}, Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegmentController;-><init>()V

    .line 49
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 51
    :cond_0
    invoke-direct {v0, p2}, Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegmentController;->setView(Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegment;)V

    .line 52
    invoke-direct {v0, p3}, Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegmentController;->setData(Lcom/google/android/calendar/api/EventModifications;)V

    .line 53
    return-object v0
.end method

.method public static newView(Landroid/view/LayoutInflater;)Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegment;
    .locals 2

    .prologue
    .line 36
    sget v0, Lcom/android/calendar/R$layout;->newapi_availability_edit_segment:I

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegment;

    .line 36
    return-object v0
.end method

.method private setData(Lcom/google/android/calendar/api/EventModifications;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    .line 63
    return-void
.end method

.method private setView(Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegment;)V
    .locals 1

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegment;

    .line 58
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegment;

    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegment;->setListener(Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method private updateAvailability()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegment;

    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegmentController;->getAvailability()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegmentController;->availabilityToLabel(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegment;->setText(Ljava/lang/String;)V

    .line 98
    return-void
.end method


# virtual methods
.method public onAvailabilityClicked()V
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegmentController;->mLabels:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegmentController;->mValues:Ljava/util/ArrayList;

    .line 84
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegmentController;->getAvailability()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegmentController;->availabilityToIndex(I)I

    move-result v2

    const/4 v3, -0x1

    .line 81
    invoke-static {v0, v1, v2, p0, v3}, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;->newIntegerBasedInstance(Ljava/util/ArrayList;Ljava/util/ArrayList;ILandroid/app/Fragment;I)Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SingleChoiceTextDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public onDialogItemChosen(Ljava/lang/Integer;I)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/EventModifications;->setAvailability(I)Lcom/google/android/calendar/api/EventModifications;

    .line 93
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegmentController;->updateAvailability()V

    .line 94
    return-void
.end method

.method public bridge synthetic onDialogItemChosen(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegmentController;->onDialogItemChosen(Ljava/lang/Integer;I)V

    return-void
.end method

.method protected onInitialize()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegmentController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$array;->availability_labels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aget-object v3, v0, v4

    aput-object v3, v2, v4

    aget-object v0, v0, v5

    aput-object v0, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegmentController;->mLabels:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegmentController;->mValues:Ljava/util/ArrayList;

    .line 73
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegmentController;->mValues:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegmentController;->mValues:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/availability/AvailabilityEditSegmentController;->updateAvailability()V

    .line 77
    return-void
.end method
