.class public Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/reminders/LoadRemindersOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mRecurrenceIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzbkQ:I

.field private zzbyF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzbyG:Ljava/lang/Long;

.field private zzbyH:Ljava/lang/Long;

.field private zzbyI:Ljava/lang/Long;

.field private zzbyJ:Ljava/lang/Long;

.field private zzbyK:Z

.field private zzbyL:I

.field private zzbyM:Z

.field private zzbyN:Z

.field private zzbyO:I

.field private zzbyP:[Lcom/google/android/gms/reminders/model/TaskId;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyG:Ljava/lang/Long;

    iput-object v2, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyH:Ljava/lang/Long;

    iput-object v2, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyI:Ljava/lang/Long;

    iput-object v2, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyJ:Ljava/lang/Long;

    iput-boolean v1, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyK:Z

    iput v1, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyL:I

    iput-boolean v1, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyM:Z

    iput-boolean v1, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyN:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyO:I

    iput v1, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbkQ:I

    iput-object v2, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->mRecurrenceIds:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addRecurrenceId(Ljava/lang/String;)Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->mRecurrenceIds:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->mRecurrenceIds:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->mRecurrenceIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/google/android/gms/reminders/LoadRemindersOptions;
    .locals 15

    iget-object v0, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyP:[Lcom/google/android/gms/reminders/model/TaskId;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/reminders/LoadRemindersOptions;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyF:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyG:Ljava/lang/Long;

    iget-object v4, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyH:Ljava/lang/Long;

    iget-object v5, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyI:Ljava/lang/Long;

    iget-object v6, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyJ:Ljava/lang/Long;

    iget-boolean v7, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyK:Z

    iget v8, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyL:I

    iget-boolean v9, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyM:Z

    iget-boolean v10, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyN:Z

    iget v11, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyO:I

    iget v12, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbkQ:I

    iget-object v13, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->mRecurrenceIds:Ljava/util/List;

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/reminders/LoadRemindersOptions;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZIZZIILjava/util/List;Lcom/google/android/gms/reminders/LoadRemindersOptions$1;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyP:[Lcom/google/android/gms/reminders/model/TaskId;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    invoke-interface {v4}, Lcom/google/android/gms/reminders/model/TaskId;->getClientAssignedId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/LoadRemindersOptions;

    iget-object v2, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyF:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyG:Ljava/lang/Long;

    iget-object v4, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyH:Ljava/lang/Long;

    iget-object v5, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyI:Ljava/lang/Long;

    iget-object v6, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyJ:Ljava/lang/Long;

    iget-boolean v7, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyK:Z

    iget v8, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyL:I

    iget-boolean v9, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyM:Z

    iget-boolean v10, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyN:Z

    iget v11, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyO:I

    iget v12, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbkQ:I

    iget-object v13, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->mRecurrenceIds:Ljava/util/List;

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/reminders/LoadRemindersOptions;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZIZZIILjava/util/List;Lcom/google/android/gms/reminders/LoadRemindersOptions$1;)V

    goto :goto_0
.end method

.method public setCollapseMode(I)Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzX(Z)V

    iput p1, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyL:I

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDueDateAfter(Ljava/lang/Long;)Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyG:Ljava/lang/Long;

    return-object p0
.end method

.method public setDueDateBefore(Ljava/lang/Long;)Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyH:Ljava/lang/Long;

    return-object p0
.end method

.method public setIncludeArchived(Z)Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyK:Z

    return-object p0
.end method

.method public varargs setLoadReminderType([I)Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;
    .locals 9

    const/4 v8, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, " The types should not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "The types should not be empty"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    iput v2, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyO:I

    array-length v4, p1

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_4

    aget v5, p1, v3

    if-eq v5, v8, :cond_0

    if-eqz v5, :cond_0

    if-eq v5, v1, :cond_0

    const/4 v0, 0x2

    if-ne v5, v0, :cond_2

    :cond_0
    move v0, v1

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid load reminder type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    if-ne v5, v8, :cond_3

    iput v8, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyO:I

    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyO:I

    shl-int v5, v1, v5

    or-int/2addr v0, v5

    iput v0, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyO:I

    goto :goto_3

    :cond_4
    return-object p0
.end method

.method public setSortOrder(I)Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbkQ:I

    return-object p0
.end method

.method public setTaskIds([Lcom/google/android/gms/reminders/model/TaskId;)Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;
    .locals 5

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->zzbyP:[Lcom/google/android/gms/reminders/model/TaskId;

    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    const-string v4, "Cannot pass in null taskId"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/TaskId;->getClientAssignedId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    const-string v4, "Cannot pass in empty client assigned id"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    return-object p0
.end method
