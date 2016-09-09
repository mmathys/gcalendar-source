.class Lcom/android/calendar/event/edit/segment/GuestEditSegment$4;
.super Ljava/lang/Object;
.source "GuestEditSegment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/segment/GuestEditSegment;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

.field final synthetic val$text:Landroid/text/Editable;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/GuestEditSegment;Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$4;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    iput-object p2, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$4;->val$text:Landroid/text/Editable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$4;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$4;->val$text:Landroid/text/Editable;

    # invokes: Lcom/android/calendar/event/edit/segment/GuestEditSegment;->findUserInputTextOffset(Landroid/text/Spanned;)I
    invoke-static {v0, v1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->access$600(Lcom/android/calendar/event/edit/segment/GuestEditSegment;Landroid/text/Spanned;)I

    move-result v0

    .line 356
    # getter for: Lcom/android/calendar/event/edit/segment/GuestEditSegment;->FINISHED_STRING:Ljava/util/regex/Pattern;
    invoke-static {}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->access$700()Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$4;->val$text:Landroid/text/Editable;

    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$4;->val$text:Landroid/text/Editable;

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {v2, v0, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 357
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$4;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$4;->val$text:Landroid/text/Editable;

    # invokes: Lcom/android/calendar/event/edit/segment/GuestEditSegment;->applyRfc822EmailAddresses(Landroid/text/Editable;I)V
    invoke-static {v1, v2, v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->access$800(Lcom/android/calendar/event/edit/segment/GuestEditSegment;Landroid/text/Editable;I)V

    .line 360
    :cond_0
    return-void
.end method
