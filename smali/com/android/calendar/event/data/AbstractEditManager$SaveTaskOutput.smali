.class public Lcom/android/calendar/event/data/AbstractEditManager$SaveTaskOutput;
.super Ljava/lang/Object;
.source "AbstractEditManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/data/AbstractEditManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SaveTaskOutput"
.end annotation


# instance fields
.field public final eventInferredId:Ljava/lang/String;

.field public final newEvent:Z

.field public final resultMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    iput-object p1, p0, Lcom/android/calendar/event/data/AbstractEditManager$SaveTaskOutput;->resultMessage:Ljava/lang/String;

    .line 596
    iput-object p2, p0, Lcom/android/calendar/event/data/AbstractEditManager$SaveTaskOutput;->eventInferredId:Ljava/lang/String;

    .line 597
    iput-boolean p3, p0, Lcom/android/calendar/event/data/AbstractEditManager$SaveTaskOutput;->newEvent:Z

    .line 598
    return-void
.end method
