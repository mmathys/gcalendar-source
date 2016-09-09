.class Lcom/android/calendar/event/edit/segment/WhereEditSegment$1;
.super Ljava/lang/Object;
.source "WhereEditSegment.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/WhereEditSegment;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/WhereEditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/WhereEditSegment;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/WhereEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/WhereEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/WhereEditSegment$1;->onChange(Ljava/lang/String;)V

    return-void
.end method

.method public onChange(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhereEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/WhereEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/WhereEditSegment;->onUnstructeredLocationChange(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->access$000(Lcom/android/calendar/event/edit/segment/WhereEditSegment;Ljava/lang/String;)V

    .line 47
    return-void
.end method
