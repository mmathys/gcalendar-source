.class Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$7;
.super Ljava/lang/Object;
.source "BaseSuggestionEditSegment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->selectItemAtPosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;I)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$7;->this$0:Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;

    iput p2, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$7;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 522
    iget v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$7;->val$position:I

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$7;->this$0:Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionAdapter:Landroid/widget/ListAdapter;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->access$000(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$7;->this$0:Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$7;->this$0:Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;

    .line 524
    # getter for: Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mElementType:Ljava/lang/Class;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->access$800(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;)Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$7;->this$0:Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionAdapter:Landroid/widget/ListAdapter;
    invoke-static {v2}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->access$000(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;)Landroid/widget/ListAdapter;

    move-result-object v2

    iget v3, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$7;->val$position:I

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 523
    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->onSuggestionAccepted(Ljava/lang/Object;)V

    .line 526
    :cond_0
    return-void
.end method
