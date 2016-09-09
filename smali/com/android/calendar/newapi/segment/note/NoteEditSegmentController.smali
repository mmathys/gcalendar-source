.class public Lcom/android/calendar/newapi/segment/note/NoteEditSegmentController;
.super Lcom/android/calendar/newapi/segment/common/SegmentController;
.source "NoteEditSegmentController.java"

# interfaces
.implements Lcom/android/calendar/newapi/segment/note/NoteEditSegment$Listener;


# instance fields
.field private mEventModifications:Lcom/google/android/calendar/api/EventModifications;

.field private mView:Lcom/android/calendar/newapi/segment/note/NoteEditSegment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/common/SegmentController;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/calendar/newapi/segment/note/NoteEditSegment;Lcom/google/android/calendar/api/EventModifications;)Lcom/android/calendar/newapi/segment/note/NoteEditSegmentController;
    .locals 2

    .prologue
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/note/NoteEditSegmentController;

    .line 29
    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/android/calendar/newapi/segment/note/NoteEditSegmentController;

    invoke-direct {v0}, Lcom/android/calendar/newapi/segment/note/NoteEditSegmentController;-><init>()V

    .line 31
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 33
    :cond_0
    invoke-direct {v0, p2}, Lcom/android/calendar/newapi/segment/note/NoteEditSegmentController;->setView(Lcom/android/calendar/newapi/segment/note/NoteEditSegment;)V

    .line 34
    invoke-direct {v0, p3}, Lcom/android/calendar/newapi/segment/note/NoteEditSegmentController;->setData(Lcom/google/android/calendar/api/EventModifications;)V

    .line 35
    return-object v0
.end method

.method public static newView(Landroid/view/LayoutInflater;)Lcom/android/calendar/newapi/segment/note/NoteEditSegment;
    .locals 2

    .prologue
    .line 22
    sget v0, Lcom/android/calendar/R$layout;->newapi_note_edit_segment:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/note/NoteEditSegment;

    return-object v0
.end method

.method private setData(Lcom/google/android/calendar/api/EventModifications;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/note/NoteEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    .line 40
    return-void
.end method

.method private setView(Lcom/android/calendar/newapi/segment/note/NoteEditSegment;)V
    .locals 1

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/note/NoteEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/note/NoteEditSegment;

    .line 44
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/note/NoteEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/note/NoteEditSegment;

    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/segment/note/NoteEditSegment;->setListener(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method private updateView()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/note/NoteEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/note/NoteEditSegment;

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/note/NoteEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v1}, Lcom/google/android/calendar/api/EventModifications;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/segment/note/NoteEditSegment;->setNote(Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method protected onInitialize()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/note/NoteEditSegmentController;->updateView()V

    .line 50
    return-void
.end method

.method public onNoteChanged(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/note/NoteEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v0, p1}, Lcom/google/android/calendar/api/EventModifications;->setDescription(Ljava/lang/String;)Lcom/google/android/calendar/api/EventModifications;

    .line 55
    return-void
.end method
