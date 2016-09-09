.class Lcom/android/bitmap/ContiguousFIFOAggregator$Value;
.super Ljava/lang/Object;
.source "ContiguousFIFOAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bitmap/ContiguousFIFOAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Value"
.end annotation


# instance fields
.field final callback:Lcom/android/bitmap/ContiguousFIFOAggregator$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/bitmap/ContiguousFIFOAggregator$Callback",
            "<TT;>;"
        }
    .end annotation
.end field

.field task:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/bitmap/ContiguousFIFOAggregator;


# direct methods
.method constructor <init>(Lcom/android/bitmap/ContiguousFIFOAggregator;Lcom/android/bitmap/ContiguousFIFOAggregator$Callback;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/bitmap/ContiguousFIFOAggregator$Callback",
            "<TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/bitmap/ContiguousFIFOAggregator$Value;->this$0:Lcom/android/bitmap/ContiguousFIFOAggregator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p2, p0, Lcom/android/bitmap/ContiguousFIFOAggregator$Value;->callback:Lcom/android/bitmap/ContiguousFIFOAggregator$Callback;

    .line 305
    iput-object p3, p0, Lcom/android/bitmap/ContiguousFIFOAggregator$Value;->task:Ljava/lang/Runnable;

    .line 306
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/bitmap/ContiguousFIFOAggregator$Value;->task:Ljava/lang/Runnable;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
