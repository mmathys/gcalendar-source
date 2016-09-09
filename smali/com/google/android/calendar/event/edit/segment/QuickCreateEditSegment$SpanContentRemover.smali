.class Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$SpanContentRemover;
.super Ljava/lang/Object;
.source "QuickCreateEditSegment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpanContentRemover"
.end annotation


# instance fields
.field mSpansToRemove:[Ljava/lang/Object;

.field final synthetic this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;


# direct methods
.method public constructor <init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1230
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$SpanContentRemover;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1231
    iput-object p2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$SpanContentRemover;->mSpansToRemove:[Ljava/lang/Object;

    .line 1232
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 1236
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$SpanContentRemover;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    # invokes: Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getInputText()Landroid/text/Editable;
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->access$900(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;)Landroid/text/Editable;

    move-result-object v1

    .line 1237
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$SpanContentRemover;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    # invokes: Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->beginIgnoreTextChanges()V
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->access$1000(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;)V

    .line 1239
    :try_start_0
    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$SpanContentRemover;->mSpansToRemove:[Ljava/lang/Object;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 1240
    invoke-interface {v1, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 1241
    invoke-interface {v1, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 1242
    if-eq v5, v7, :cond_0

    if-ne v6, v7, :cond_1

    .line 1239
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1246
    :cond_1
    invoke-interface {v1, v4}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 1247
    instance-of v4, v4, Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    if-eqz v4, :cond_0

    .line 1248
    invoke-interface {v1, v5, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1252
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$SpanContentRemover;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    # invokes: Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->endIgnoreTextChanges()V
    invoke-static {v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->access$1100(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$SpanContentRemover;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    # invokes: Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->endIgnoreTextChanges()V
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->access$1100(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;)V

    .line 1254
    return-void
.end method
