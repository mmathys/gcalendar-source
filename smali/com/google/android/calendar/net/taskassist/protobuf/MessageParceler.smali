.class public Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler;
.super Ljava/lang/Object;
.source "MessageParceler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel;
    }
.end annotation


# direct methods
.method public static fromParcelable(Landroid/os/Parcelable;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 104
    if-nez p0, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    check-cast p0, Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel;

    # getter for: Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel;->message:Lcom/google/protobuf/nano/MessageNano;
    invoke-static {p0}, Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel;->access$000(Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    goto :goto_0
.end method

.method public static fromParcelableArrayToClass(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Parcelable;",
            ">;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 144
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 145
    invoke-static {v0}, Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler;->fromParcelable(Landroid/os/Parcelable;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_0
    return-object v1
.end method

.method public static toParcelable(Lcom/google/protobuf/nano/MessageNano;)Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 93
    if-nez p0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler$MessageParcel;-><init>(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0
.end method

.method public static toParcelableArray(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    .line 118
    invoke-static {v0}, Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler;->toParcelable(Lcom/google/protobuf/nano/MessageNano;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_0
    return-object v1
.end method
