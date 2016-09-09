.class Lcom/android/calendar/event/edit/segment/TitleEditSegment$1;
.super Ljava/lang/Object;
.source "TitleEditSegment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/segment/TitleEditSegment;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/TitleEditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/TitleEditSegment;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/TitleEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/TitleEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/TitleEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/TitleEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/TitleEditSegment;->mTitleData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/TitleEditSegment;->access$000(Lcom/android/calendar/event/edit/segment/TitleEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/TitleEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/TitleEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/TitleEditSegment;->mTitleData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/TitleEditSegment;->access$000(Lcom/android/calendar/event/edit/segment/TitleEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method
