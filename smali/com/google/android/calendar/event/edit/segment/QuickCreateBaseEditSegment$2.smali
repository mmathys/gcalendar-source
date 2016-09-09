.class Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$2;
.super Ljava/lang/Object;
.source "QuickCreateBaseEditSegment.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/common/Listener",
        "<",
        "Lcom/google/calendar/v2/client/service/api/common/Color;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$2;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/google/calendar/v2/client/service/api/common/Color;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$2;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;

    # invokes: Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->setChipColor(Lcom/google/calendar/v2/client/service/api/common/Color;)V
    invoke-static {v0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->access$000(Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;Lcom/google/calendar/v2/client/service/api/common/Color;)V

    .line 123
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 119
    check-cast p1, Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$2;->onChange(Lcom/google/calendar/v2/client/service/api/common/Color;)V

    return-void
.end method
