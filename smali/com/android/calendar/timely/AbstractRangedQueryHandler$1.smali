.class Lcom/android/calendar/timely/AbstractRangedQueryHandler$1;
.super Ljava/lang/Object;
.source "AbstractRangedQueryHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/AbstractRangedQueryHandler;->doQuery(Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/AbstractRangedQueryHandler;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/AbstractRangedQueryHandler;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$1;->this$0:Lcom/android/calendar/timely/AbstractRangedQueryHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$1;->this$0:Lcom/android/calendar/timely/AbstractRangedQueryHandler;

    # invokes: Lcom/android/calendar/timely/AbstractRangedQueryHandler;->deQueue()V
    invoke-static {v0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->access$400(Lcom/android/calendar/timely/AbstractRangedQueryHandler;)V

    .line 414
    return-void
.end method
