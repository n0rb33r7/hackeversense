.class Lcom/senseonics/model/RangeWithCurrentValue;
.super Ljava/lang/Object;
.source "RangeWithCurrentValue.java"


# instance fields
.field private ranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/senseonics/util/RangeWithIntSet;",
            ">;"
        }
    .end annotation
.end field

.field private responseId:I

.field private totalRecordsExpected:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/senseonics/model/RangeWithCurrentValue;->responseId:I

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/senseonics/model/RangeWithCurrentValue;->ranges:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addRange(II)V
    .locals 2

    .line 76
    iget v0, p0, Lcom/senseonics/model/RangeWithCurrentValue;->totalRecordsExpected:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/senseonics/model/RangeWithCurrentValue;->totalRecordsExpected:I

    .line 77
    iget-object v0, p0, Lcom/senseonics/model/RangeWithCurrentValue;->ranges:Ljava/util/List;

    new-instance v1, Lcom/senseonics/util/RangeWithIntSet;

    sub-int p2, p1, p2

    add-int/lit8 p2, p2, 0x1

    invoke-direct {v1, p2, p1}, Lcom/senseonics/util/RangeWithIntSet;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method getFinished()I
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/senseonics/model/RangeWithCurrentValue;->ranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/util/RangeWithIntSet;

    .line 60
    invoke-virtual {v2}, Lcom/senseonics/util/RangeWithIntSet;->getSetSize()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 63
    :cond_0
    iget v0, p0, Lcom/senseonics/model/RangeWithCurrentValue;->totalRecordsExpected:I

    sub-int/2addr v0, v1

    return v0
.end method

.method getNumberOfRecordsExpected()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/senseonics/model/RangeWithCurrentValue;->totalRecordsExpected:I

    return v0
.end method

.method getResponseId()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/senseonics/model/RangeWithCurrentValue;->responseId:I

    return v0
.end method

.method public isSyncing()Z
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/senseonics/model/RangeWithCurrentValue;->ranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/util/RangeWithIntSet;

    .line 45
    invoke-virtual {v2}, Lcom/senseonics/util/RangeWithIntSet;->isSetEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public remove(I)Lcom/senseonics/util/RangeWithIntSet;
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/senseonics/model/RangeWithCurrentValue;->ranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/util/RangeWithIntSet;

    .line 25
    invoke-virtual {v1, p1}, Lcom/senseonics/util/RangeWithIntSet;->hasObject(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    invoke-virtual {v1, p1}, Lcom/senseonics/util/RangeWithIntSet;->remove(I)V

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method searchRangeWithFromTo(II)Lcom/senseonics/util/RangeWithIntSet;
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/senseonics/model/RangeWithCurrentValue;->ranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/util/RangeWithIntSet;

    .line 35
    invoke-virtual {v1}, Lcom/senseonics/util/RangeWithIntSet;->getFrom()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/senseonics/util/RangeWithIntSet;->getTo()I

    move-result v2

    if-ne v2, p2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 68
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/senseonics/model/RangeWithCurrentValue;->responseId:I

    .line 69
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "responseId"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/senseonics/model/RangeWithCurrentValue;->totalRecordsExpected:I

    const-string v2, "totalRecordsExpected"

    .line 70
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Lcom/senseonics/model/RangeWithCurrentValue;->getFinished()I

    move-result v1

    const-string v2, "finished"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
