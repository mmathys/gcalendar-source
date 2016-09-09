.class public Lcom/android/calendar/newapi/segment/note/NoteEditSegment;
.super Lcom/android/calendar/newapi/segment/common/EditSegment;
.source "NoteEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/newapi/segment/note/NoteEditSegment$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/segment/common/EditSegment",
        "<",
        "Lcom/android/calendar/newapi/segment/note/NoteEditSegment$Listener;",
        ">;"
    }
.end annotation


# instance fields
.field private mNoteEditText:Lcom/android/calendar/newapi/segment/common/NinjaEditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/newapi/segment/common/EditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/newapi/segment/note/NoteEditSegment;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/note/NoteEditSegment;->mListener:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/newapi/segment/note/NoteEditSegment;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/note/NoteEditSegment;->mListener:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Lcom/android/calendar/newapi/segment/common/EditSegment;->onFinishInflate()V

    .line 38
    sget v0, Lcom/android/calendar/R$id;->note_edit_text:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/note/NoteEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/common/NinjaEditText;

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/note/NoteEditSegment;->mNoteEditText:Lcom/android/calendar/newapi/segment/common/NinjaEditText;

    .line 39
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/note/NoteEditSegment;->mNoteEditText:Lcom/android/calendar/newapi/segment/common/NinjaEditText;

    new-instance v1, Lcom/android/calendar/newapi/segment/note/NoteEditSegment$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/newapi/segment/note/NoteEditSegment$1;-><init>(Lcom/android/calendar/newapi/segment/note/NoteEditSegment;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/segment/common/NinjaEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 59
    return-void
.end method

.method public setNote(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/note/NoteEditSegment;->mNoteEditText:Lcom/android/calendar/newapi/segment/common/NinjaEditText;

    invoke-virtual {v0, p1}, Lcom/android/calendar/newapi/segment/common/NinjaEditText;->setTextStealthily(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method
