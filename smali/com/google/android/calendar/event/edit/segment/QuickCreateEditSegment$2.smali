.class Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$2;
.super Ljava/lang/Object;
.source "QuickCreateEditSegment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->applyQuickCreateInput(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

.field final synthetic val$titleToSet:Landroid/text/Spanned;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;Landroid/text/Spanned;)V
    .locals 0

    .prologue
    .line 826
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$2;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    iput-object p2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$2;->val$titleToSet:Landroid/text/Spanned;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 829
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$2;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$2;->val$titleToSet:Landroid/text/Spanned;

    # invokes: Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->setTitleInternal(Ljava/lang/CharSequence;)V
    invoke-static {v0, v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->access$300(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;Ljava/lang/CharSequence;)V

    .line 830
    return-void
.end method
