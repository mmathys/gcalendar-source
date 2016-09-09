.class final Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$PrimesLeakListener;
.super Ljava/lang/Object;
.source "MemoryLeakMetricService.java"

# interfaces
.implements Lcom/google/android/libraries/performance/primes/leak/LeakListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrimesLeakListener"
.end annotation


# instance fields
.field private final metricRecorder:Lcom/google/android/libraries/performance/primes/MetricRecorder;

.field private final stats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;Lcom/google/android/libraries/performance/primes/MetricRecorder;)V
    .locals 1

    .prologue
    .line 196
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$PrimesLeakListener;->this$0:Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$PrimesLeakListener;->stats:Ljava/util/Map;

    .line 197
    invoke-static {p2}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/MetricRecorder;

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$PrimesLeakListener;->metricRecorder:Lcom/google/android/libraries/performance/primes/MetricRecorder;

    .line 198
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;Lcom/google/android/libraries/performance/primes/MetricRecorder;Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$1;)V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$PrimesLeakListener;-><init>(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;Lcom/google/android/libraries/performance/primes/MetricRecorder;)V

    return-void
.end method

.method private satisfyDumpingRequirements()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 251
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$PrimesLeakListener;->this$0:Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;

    # getter for: Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->heapDumpEligible:Z
    invoke-static {v1}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->access$400(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$PrimesLeakListener;->this$0:Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;

    # getter for: Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->serviceFlags:Lcom/google/android/libraries/performance/primes/ServiceFlags;
    invoke-static {v1}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->access$500(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;)Lcom/google/android/libraries/performance/primes/ServiceFlags;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$PrimesLeakListener;->this$0:Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;

    .line 252
    # getter for: Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->serviceFlags:Lcom/google/android/libraries/performance/primes/ServiceFlags;
    invoke-static {v1}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->access$500(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;)Lcom/google/android/libraries/performance/primes/ServiceFlags;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->isLeakDetectionV2Enabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v0

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$PrimesLeakListener;->this$0:Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;

    # getter for: Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->lastSent:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v1}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->access$600(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 260
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    const-wide/32 v4, 0x2932e00

    add-long/2addr v2, v4

    invoke-static {}, Lcom/google/android/libraries/performance/primes/metriccapture/TimeCapture;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private scheduleHprofDump()V
    .locals 4

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$PrimesLeakListener;->this$0:Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;

    # getter for: Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->dumpScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->access$700(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    const-string v0, "MemoryLeakService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    const-string v0, "MemoryLeakService"

    const-string v1, "Scheduling heap dump 5 seconds after the next screen off."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 270
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$PrimesLeakListener;->this$0:Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;

    # getter for: Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->application:Landroid/app/Application;
    invoke-static {v1}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->access$800(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;)Landroid/app/Application;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$ScreenOnOffReceiver;

    iget-object v3, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$PrimesLeakListener;->this$0:Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;

    invoke-direct {v2, v3}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$ScreenOnOffReceiver;-><init>(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;)V

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 273
    :cond_1
    return-void
.end method


# virtual methods
.method public onBatchComplete(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 222
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 223
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$PrimesLeakListener;->stats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 224
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 225
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;

    .line 226
    # getter for: Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;->leaked:I
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;->access$300(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;)I

    move-result v4

    if-gtz v4, :cond_1

    # getter for: Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;->released:I
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;->access$200(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;)I

    move-result v4

    if-lez v4, :cond_0

    .line 227
    :cond_1
    new-instance v4, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;

    invoke-direct {v4}, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;-><init>()V

    .line 228
    iput-object v1, v4, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->className:Ljava/lang/String;

    .line 229
    # getter for: Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;->leaked:I
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;->access$300(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v4, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->leakedCount:Ljava/lang/Integer;

    .line 230
    # getter for: Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;->released:I
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;->access$200(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v4, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->releasedCount:Ljava/lang/Integer;

    .line 231
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    # setter for: Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;->leaked:I
    invoke-static {v0, v5}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;->access$302(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;I)I

    .line 233
    # setter for: Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;->released:I
    invoke-static {v0, v5}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;->access$202(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;I)I

    goto :goto_0

    .line 236
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 237
    new-instance v1, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;

    invoke-direct {v1}, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;-><init>()V

    .line 238
    new-instance v0, Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;

    invoke-direct {v0}, Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;-><init>()V

    iput-object v0, v1, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->memoryLeakMetric:Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;

    .line 239
    iget-object v3, v1, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->memoryLeakMetric:Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;

    .line 240
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;

    iput-object v0, v3, Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;->objectInfo:[Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;

    .line 241
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$PrimesLeakListener;->metricRecorder:Lcom/google/android/libraries/performance/primes/MetricRecorder;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/MetricRecorder;->shouldRecord()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$PrimesLeakListener;->metricRecorder:Lcom/google/android/libraries/performance/primes/MetricRecorder;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/performance/primes/MetricRecorder;->record(Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;)V

    .line 245
    :cond_3
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$PrimesLeakListener;->satisfyDumpingRequirements()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 246
    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$PrimesLeakListener;->scheduleHprofDump()V

    .line 248
    :cond_4
    return-void
.end method

.method public onHeapDumpResult(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 278
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 279
    new-instance v4, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;

    invoke-direct {v4}, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;-><init>()V

    .line 280
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 281
    if-gez v1, :cond_0

    move-object v1, v0

    :goto_1
    iput-object v1, v4, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->className:Ljava/lang/String;

    .line 282
    iput-object v0, v4, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->leakPath:Ljava/lang/String;

    .line 283
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v4, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->leakedCount:Ljava/lang/Integer;

    .line 284
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 281
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 286
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 287
    new-instance v1, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;

    invoke-direct {v1}, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;-><init>()V

    .line 288
    new-instance v0, Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;

    invoke-direct {v0}, Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;-><init>()V

    iput-object v0, v1, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->memoryLeakMetric:Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;

    .line 289
    iget-object v3, v1, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->memoryLeakMetric:Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;

    .line 290
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;

    iput-object v0, v3, Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;->objectInfo:[Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;

    .line 291
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$PrimesLeakListener;->metricRecorder:Lcom/google/android/libraries/performance/primes/MetricRecorder;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/MetricRecorder;->shouldRecord()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$PrimesLeakListener;->metricRecorder:Lcom/google/android/libraries/performance/primes/MetricRecorder;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/performance/primes/MetricRecorder;->record(Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;)V

    .line 295
    :cond_2
    const-string v0, "MemoryLeakService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 296
    const-string v0, "MemoryLeakService"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x22

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Primes found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " leak(s): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_3
    return-void
.end method

.method public onLeaked(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$PrimesLeakListener;->stats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;

    .line 213
    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;-><init>(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$1;)V

    .line 215
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$PrimesLeakListener;->stats:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_0
    # operator++ for: Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;->leaked:I
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;->access$308(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;)I

    .line 218
    return-void
.end method

.method public onReleased(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$PrimesLeakListener;->stats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;

    .line 203
    if-nez v0, :cond_0

    .line 204
    new-instance v0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;-><init>(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$1;)V

    .line 205
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$PrimesLeakListener;->stats:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_0
    # operator++ for: Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;->released:I
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;->access$208(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;)I

    .line 208
    return-void
.end method
