.class Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$2;
.super Ljava/lang/Object;
.source "BaseSuggestionEditSegment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->onRestoreInstanceState(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$2;->this$0:Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$2;->this$0:Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$2;->this$0:Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->requestSuggestions()V

    .line 200
    :cond_0
    return-void
.end method
