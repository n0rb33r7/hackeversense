.class final Lcom/squareup/javapoet/LineWrapper;
.super Ljava/lang/Object;
.source "LineWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/javapoet/LineWrapper$RecordingAppendable;,
        Lcom/squareup/javapoet/LineWrapper$FlushType;
    }
.end annotation


# instance fields
.field private final buffer:Ljava/lang/StringBuilder;

.field private closed:Z

.field private column:I

.field private final columnLimit:I

.field private final indent:Ljava/lang/String;

.field private indentLevel:I

.field private nextFlush:Lcom/squareup/javapoet/LineWrapper$FlushType;

.field private final out:Lcom/squareup/javapoet/LineWrapper$RecordingAppendable;


# direct methods
.method constructor <init>(Ljava/lang/Appendable;Ljava/lang/String;I)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/LineWrapper;->buffer:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/squareup/javapoet/LineWrapper;->column:I

    const/4 v1, -0x1

    .line 41
    iput v1, p0, Lcom/squareup/javapoet/LineWrapper;->indentLevel:I

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "out == null"

    .line 49
    invoke-static {p1, v1, v0}, Lcom/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v0, Lcom/squareup/javapoet/LineWrapper$RecordingAppendable;

    invoke-direct {v0, p1}, Lcom/squareup/javapoet/LineWrapper$RecordingAppendable;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Lcom/squareup/javapoet/LineWrapper;->out:Lcom/squareup/javapoet/LineWrapper$RecordingAppendable;

    .line 51
    iput-object p2, p0, Lcom/squareup/javapoet/LineWrapper;->indent:Ljava/lang/String;

    .line 52
    iput p3, p0, Lcom/squareup/javapoet/LineWrapper;->columnLimit:I

    return-void
.end method

.method private flush(Lcom/squareup/javapoet/LineWrapper$FlushType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    sget-object v0, Lcom/squareup/javapoet/LineWrapper$1;->$SwitchMap$com$squareup$javapoet$LineWrapper$FlushType:[I

    invoke-virtual {p1}, Lcom/squareup/javapoet/LineWrapper$FlushType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown FlushType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1
    iget-object p1, p0, Lcom/squareup/javapoet/LineWrapper;->out:Lcom/squareup/javapoet/LineWrapper$RecordingAppendable;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/squareup/javapoet/LineWrapper$RecordingAppendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    .line 117
    :cond_2
    iget-object p1, p0, Lcom/squareup/javapoet/LineWrapper;->out:Lcom/squareup/javapoet/LineWrapper$RecordingAppendable;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/squareup/javapoet/LineWrapper$RecordingAppendable;->append(C)Ljava/lang/Appendable;

    move p1, v1

    .line 118
    :goto_0
    iget v0, p0, Lcom/squareup/javapoet/LineWrapper;->indentLevel:I

    if-ge p1, v0, :cond_3

    .line 119
    iget-object v0, p0, Lcom/squareup/javapoet/LineWrapper;->out:Lcom/squareup/javapoet/LineWrapper$RecordingAppendable;

    iget-object v2, p0, Lcom/squareup/javapoet/LineWrapper;->indent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/squareup/javapoet/LineWrapper$RecordingAppendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 121
    :cond_3
    iget-object p1, p0, Lcom/squareup/javapoet/LineWrapper;->indent:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/squareup/javapoet/LineWrapper;->column:I

    .line 122
    iget-object p1, p0, Lcom/squareup/javapoet/LineWrapper;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/squareup/javapoet/LineWrapper;->column:I

    .line 133
    :goto_1
    iget-object p1, p0, Lcom/squareup/javapoet/LineWrapper;->out:Lcom/squareup/javapoet/LineWrapper$RecordingAppendable;

    iget-object v0, p0, Lcom/squareup/javapoet/LineWrapper;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lcom/squareup/javapoet/LineWrapper$RecordingAppendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 134
    iget-object p1, p0, Lcom/squareup/javapoet/LineWrapper;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 p1, -0x1

    .line 135
    iput p1, p0, Lcom/squareup/javapoet/LineWrapper;->indentLevel:I

    const/4 p1, 0x0

    .line 136
    iput-object p1, p0, Lcom/squareup/javapoet/LineWrapper;->nextFlush:Lcom/squareup/javapoet/LineWrapper$FlushType;

    return-void
.end method


# virtual methods
.method append(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-boolean v0, p0, Lcom/squareup/javapoet/LineWrapper;->closed:Z

    if-nez v0, :cond_6

    .line 64
    iget-object v0, p0, Lcom/squareup/javapoet/LineWrapper;->nextFlush:Lcom/squareup/javapoet/LineWrapper$FlushType;

    const/4 v1, 0x1

    const/16 v2, 0xa

    const/4 v3, -0x1

    if-eqz v0, :cond_4

    .line 65
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 69
    iget v4, p0, Lcom/squareup/javapoet/LineWrapper;->column:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/squareup/javapoet/LineWrapper;->columnLimit:I

    if-gt v4, v5, :cond_0

    .line 70
    iget-object v0, p0, Lcom/squareup/javapoet/LineWrapper;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget v0, p0, Lcom/squareup/javapoet/LineWrapper;->column:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/squareup/javapoet/LineWrapper;->column:I

    return-void

    :cond_0
    if-eq v0, v3, :cond_2

    .line 76
    iget v4, p0, Lcom/squareup/javapoet/LineWrapper;->column:I

    add-int/2addr v4, v0

    iget v0, p0, Lcom/squareup/javapoet/LineWrapper;->columnLimit:I

    if-le v4, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 77
    sget-object v0, Lcom/squareup/javapoet/LineWrapper$FlushType;->WRAP:Lcom/squareup/javapoet/LineWrapper$FlushType;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/squareup/javapoet/LineWrapper;->nextFlush:Lcom/squareup/javapoet/LineWrapper$FlushType;

    :goto_2
    invoke-direct {p0, v0}, Lcom/squareup/javapoet/LineWrapper;->flush(Lcom/squareup/javapoet/LineWrapper$FlushType;)V

    .line 80
    :cond_4
    iget-object v0, p0, Lcom/squareup/javapoet/LineWrapper;->out:Lcom/squareup/javapoet/LineWrapper$RecordingAppendable;

    invoke-virtual {v0, p1}, Lcom/squareup/javapoet/LineWrapper$RecordingAppendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 81
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_5

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v0

    sub-int/2addr p1, v1

    goto :goto_3

    .line 84
    :cond_5
    iget v0, p0, Lcom/squareup/javapoet/LineWrapper;->column:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    :goto_3
    iput p1, p0, Lcom/squareup/javapoet/LineWrapper;->column:I

    return-void

    .line 62
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/squareup/javapoet/LineWrapper;->nextFlush:Lcom/squareup/javapoet/LineWrapper$FlushType;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/squareup/javapoet/LineWrapper;->flush(Lcom/squareup/javapoet/LineWrapper$FlushType;)V

    :cond_0
    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/squareup/javapoet/LineWrapper;->closed:Z

    return-void
.end method

.method lastChar()C
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/squareup/javapoet/LineWrapper;->out:Lcom/squareup/javapoet/LineWrapper$RecordingAppendable;

    iget-char v0, v0, Lcom/squareup/javapoet/LineWrapper$RecordingAppendable;->lastChar:C

    return v0
.end method

.method wrappingSpace(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-boolean v0, p0, Lcom/squareup/javapoet/LineWrapper;->closed:Z

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/squareup/javapoet/LineWrapper;->nextFlush:Lcom/squareup/javapoet/LineWrapper$FlushType;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/squareup/javapoet/LineWrapper;->flush(Lcom/squareup/javapoet/LineWrapper$FlushType;)V

    .line 92
    :cond_0
    iget v0, p0, Lcom/squareup/javapoet/LineWrapper;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/javapoet/LineWrapper;->column:I

    .line 93
    sget-object v0, Lcom/squareup/javapoet/LineWrapper$FlushType;->SPACE:Lcom/squareup/javapoet/LineWrapper$FlushType;

    iput-object v0, p0, Lcom/squareup/javapoet/LineWrapper;->nextFlush:Lcom/squareup/javapoet/LineWrapper$FlushType;

    .line 94
    iput p1, p0, Lcom/squareup/javapoet/LineWrapper;->indentLevel:I

    return-void

    .line 89
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method zeroWidthSpace(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-boolean v0, p0, Lcom/squareup/javapoet/LineWrapper;->closed:Z

    if-nez v0, :cond_2

    .line 101
    iget v0, p0, Lcom/squareup/javapoet/LineWrapper;->column:I

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/squareup/javapoet/LineWrapper;->nextFlush:Lcom/squareup/javapoet/LineWrapper$FlushType;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/squareup/javapoet/LineWrapper;->flush(Lcom/squareup/javapoet/LineWrapper$FlushType;)V

    .line 103
    :cond_1
    sget-object v0, Lcom/squareup/javapoet/LineWrapper$FlushType;->EMPTY:Lcom/squareup/javapoet/LineWrapper$FlushType;

    iput-object v0, p0, Lcom/squareup/javapoet/LineWrapper;->nextFlush:Lcom/squareup/javapoet/LineWrapper$FlushType;

    .line 104
    iput p1, p0, Lcom/squareup/javapoet/LineWrapper;->indentLevel:I

    return-void

    .line 99
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
