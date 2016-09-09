.class public Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;
.super Lcom/android/calendar/newapi/segment/common/SegmentController;
.source "ColorEditSegmentController.java"

# interfaces
.implements Lcom/android/calendar/newapi/segment/color/ColorEditSegment$Listener;
.implements Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog$SingleChoiceDialogListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/segment/common/SegmentController;",
        "Lcom/android/calendar/newapi/segment/color/ColorEditSegment$Listener;",
        "Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog$SingleChoiceDialogListener",
        "<",
        "Lcom/android/calendar/newapi/segment/common/ColorEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private mCalendarModification:Lcom/android/calendar/newapi/model/CalendarModification;

.field private mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

.field private mColorCache:Lcom/google/android/calendar/api/ColorCache;

.field private mColorModification:Lcom/android/calendar/newapi/model/ColorModification;

.field private mColorPalette:Lcom/android/calendar/newapi/segment/common/ColorPalette;

.field private mView:Lcom/android/calendar/newapi/segment/color/ColorEditSegment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/common/SegmentController;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/calendar/newapi/segment/color/ColorEditSegment;Lcom/android/calendar/newapi/model/ColorModification;Lcom/android/calendar/newapi/model/CalendarModification;Lcom/android/calendar/newapi/model/CalendarStore;Lcom/google/android/calendar/api/ColorCache;)Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;
    .locals 2

    .prologue
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;

    .line 57
    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;

    invoke-direct {v0}, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;-><init>()V

    .line 59
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 61
    :cond_0
    invoke-direct {v0, p2}, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->setView(Lcom/android/calendar/newapi/segment/color/ColorEditSegment;)V

    .line 62
    invoke-direct {v0, p3, p4, p5, p6}, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->setData(Lcom/android/calendar/newapi/model/ColorModification;Lcom/android/calendar/newapi/model/CalendarModification;Lcom/android/calendar/newapi/model/CalendarStore;Lcom/google/android/calendar/api/ColorCache;)V

    .line 63
    return-object v0
.end method

.method public static newView(Landroid/view/LayoutInflater;)Lcom/android/calendar/newapi/segment/color/ColorEditSegment;
    .locals 2

    .prologue
    .line 44
    sget v0, Lcom/android/calendar/R$layout;->newapi_color_edit_segment:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/color/ColorEditSegment;

    return-object v0
.end method

.method private setData(Lcom/android/calendar/newapi/model/ColorModification;Lcom/android/calendar/newapi/model/CalendarModification;Lcom/android/calendar/newapi/model/CalendarStore;Lcom/google/android/calendar/api/ColorCache;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->mColorModification:Lcom/android/calendar/newapi/model/ColorModification;

    .line 76
    iput-object p2, p0, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->mCalendarModification:Lcom/android/calendar/newapi/model/CalendarModification;

    .line 77
    iput-object p3, p0, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    .line 78
    iput-object p4, p0, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->mColorCache:Lcom/google/android/calendar/api/ColorCache;

    .line 79
    return-void
.end method

.method private setView(Lcom/android/calendar/newapi/segment/color/ColorEditSegment;)V
    .locals 1

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/color/ColorEditSegment;

    .line 68
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/color/ColorEditSegment;

    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/segment/color/ColorEditSegment;->setListener(Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method private updateColorPalette()V
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->mCalendarModification:Lcom/android/calendar/newapi/model/CalendarModification;

    invoke-interface {v0}, Lcom/android/calendar/newapi/model/CalendarModification;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->mColorCache:Lcom/google/android/calendar/api/ColorCache;

    invoke-virtual {v1, v0}, Lcom/google/android/calendar/api/ColorCache;->getEventColors(Landroid/accounts/Account;)Ljava/util/Collection;

    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->mCalendarModification:Lcom/android/calendar/newapi/model/CalendarModification;

    .line 116
    invoke-interface {v3}, Lcom/android/calendar/newapi/model/CalendarModification;->getCalendarId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/calendar/newapi/model/CalendarStore;->getImmutableCalendar(Ljava/lang/String;Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/android/calendar/newapi/segment/common/ColorPalette;->newInstance(Landroid/content/res/Resources;Ljava/util/Collection;Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)Lcom/android/calendar/newapi/segment/common/ColorPalette;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->mColorPalette:Lcom/android/calendar/newapi/segment/common/ColorPalette;

    .line 118
    return-void
.end method

.method private updateView()V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/color/ColorEditSegment;

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->mColorPalette:Lcom/android/calendar/newapi/segment/common/ColorPalette;

    iget-object v2, p0, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->mColorModification:Lcom/android/calendar/newapi/model/ColorModification;

    invoke-interface {v2}, Lcom/android/calendar/newapi/model/ColorModification;->getColorOverride()Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/newapi/segment/common/ColorPalette;->getColorEntry(Lcom/google/android/calendar/api/ColorDescriptor;)Lcom/android/calendar/newapi/segment/common/ColorEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/segment/color/ColorEditSegment;->setDisplayedColor(Lcom/android/calendar/newapi/segment/common/ColorEntry;)V

    .line 122
    return-void
.end method


# virtual methods
.method public onCalendarChanged()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->updateColorPalette()V

    .line 109
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->updateView()V

    .line 110
    return-void
.end method

.method public onColorChanged()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->updateView()V

    .line 104
    return-void
.end method

.method public onColorClicked()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->mColorPalette:Lcom/android/calendar/newapi/segment/common/ColorPalette;

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->mColorModification:Lcom/android/calendar/newapi/model/ColorModification;

    invoke-interface {v1}, Lcom/android/calendar/newapi/model/ColorModification;->getColorOverride()Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/segment/common/ColorPalette;->getColorIndex(Lcom/google/android/calendar/api/ColorDescriptor;)I

    move-result v0

    .line 84
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->mColorPalette:Lcom/android/calendar/newapi/segment/common/ColorPalette;

    invoke-static {v1, v0, p0}, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog;->newInstance(Lcom/android/calendar/newapi/segment/common/ColorPalette;ILandroid/app/Fragment;)Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public onDialogItemChosen(Lcom/android/calendar/newapi/segment/common/ColorEntry;I)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->mColorModification:Lcom/android/calendar/newapi/model/ColorModification;

    iget-object v1, p1, Lcom/android/calendar/newapi/segment/common/ColorEntry;->apiDescriptor:Lcom/google/android/calendar/api/ColorDescriptor;

    invoke-interface {v0, v1}, Lcom/android/calendar/newapi/model/ColorModification;->setColorOverride(Lcom/google/android/calendar/api/ColorDescriptor;)V

    .line 91
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->updateView()V

    .line 92
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->notifyColorChanged()V

    .line 93
    return-void
.end method

.method public bridge synthetic onDialogItemChosen(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Lcom/android/calendar/newapi/segment/common/ColorEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->onDialogItemChosen(Lcom/android/calendar/newapi/segment/common/ColorEntry;I)V

    return-void
.end method

.method protected onInitialize()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->updateColorPalette()V

    .line 98
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/color/ColorEditSegmentController;->updateView()V

    .line 99
    return-void
.end method
