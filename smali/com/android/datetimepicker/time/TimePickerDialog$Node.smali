.class Lcom/android/datetimepicker/time/TimePickerDialog$Node;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/datetimepicker/time/TimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Node"
.end annotation


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/datetimepicker/time/TimePickerDialog$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mLegalKeys:[I

.field final synthetic this$0:Lcom/android/datetimepicker/time/TimePickerDialog;


# direct methods
.method public varargs constructor <init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V
    .locals 1

    .prologue
    .line 962
    iput-object p1, p0, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->this$0:Lcom/android/datetimepicker/time/TimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 963
    iput-object p2, p0, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->mLegalKeys:[I

    .line 964
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->mChildren:Ljava/util/ArrayList;

    .line 965
    return-void
.end method


# virtual methods
.method public addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 969
    return-void
.end method

.method public canReach(I)Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 981
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 989
    :goto_0
    return-object v0

    .line 984
    :cond_0
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    .line 985
    invoke-virtual {v0, p1}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 989
    goto :goto_0
.end method

.method public containsKey(I)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 972
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->mLegalKeys:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 973
    iget-object v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->mLegalKeys:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_1

    .line 974
    const/4 v1, 0x1

    .line 977
    :cond_0
    return v1

    .line 972
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
