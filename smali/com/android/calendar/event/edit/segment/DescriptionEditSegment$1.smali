.class Lcom/android/calendar/event/edit/segment/DescriptionEditSegment$1;
.super Ljava/lang/Object;
.source "DescriptionEditSegment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/DescriptionEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/DescriptionEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;->mNoteData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;->access$000(Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/DescriptionEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;->mNoteData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;->access$000(Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method
