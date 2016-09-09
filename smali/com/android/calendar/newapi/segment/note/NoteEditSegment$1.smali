.class Lcom/android/calendar/newapi/segment/note/NoteEditSegment$1;
.super Ljava/lang/Object;
.source "NoteEditSegment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/segment/note/NoteEditSegment;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/newapi/segment/note/NoteEditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/segment/note/NoteEditSegment;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/note/NoteEditSegment$1;->this$0:Lcom/android/calendar/newapi/segment/note/NoteEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/note/NoteEditSegment$1;->this$0:Lcom/android/calendar/newapi/segment/note/NoteEditSegment;

    # getter for: Lcom/android/calendar/newapi/segment/note/NoteEditSegment;->mListener:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/calendar/newapi/segment/note/NoteEditSegment;->access$000(Lcom/android/calendar/newapi/segment/note/NoteEditSegment;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/note/NoteEditSegment$1;->this$0:Lcom/android/calendar/newapi/segment/note/NoteEditSegment;

    # getter for: Lcom/android/calendar/newapi/segment/note/NoteEditSegment;->mListener:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/calendar/newapi/segment/note/NoteEditSegment;->access$100(Lcom/android/calendar/newapi/segment/note/NoteEditSegment;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/note/NoteEditSegment$Listener;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/calendar/newapi/segment/note/NoteEditSegment$Listener;->onNoteChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 49
    return-void
.end method
